# Fully Differential Class-AB Operational Amplifier in IHP 130nm CMOS

## Description
A high-performance, fully differential operational transconductance amplifier (OTA) integrated with a Monticelli Class-AB push-pull output stage, designed and simulated using the open-source **IHP SG13CMOS5L** 130 nm CMOS process design kit (PDK).

The amplifier addresses the classic dual Right-Half-Plane (RHP) zero instability in Class-AB drivers through intentional transconductance asymmetry ($g_{mp} \gg g_{mn}$), enabling simple single-point $RC$ Miller compensation. The design features a continuous-time common-mode feedback (CT-CMFB) loop, integrated local biasing from a single 2.5 µA external current source, and an automated pattern-driven common-centroid layout with STI stress mitigation.

---

## Schematics & Layout Overview

### Core Schematic & Testbenches
| Schematic / Module | Description | Visual / Diagram |
| :--- | :--- | :--- |
| **Top-Level Circuit (`top.png`)** | Full OTA schematic view including CMFB and Output Stage | ![Top Level Schematic](results/top.png) |
| **Top Testbench (`ota_cmfb_top_tb.svg`)** | Complete differential simulation testbench setup | ![Top TB Diagram](results/ota_cmfb_top_tb.svg) |
| **Schematic Testbench (`schem_tb.svg`)** | Open-loop AC/DC differential probe configuration | ![Schematic TB](results/schem_tb.svg) |
| **PEX Extracted Testbench (`pex_tb.svg`)** | Post-layout parasitic extraction simulation setup | ![PEX TB](results/pex_tb.svg) |

### Physical Layout & Top Integration
| Layout Component | Visual |
| :--- | :--- |
| **Top-Level Chip Layout (`top.png`)** | ![Top Layout](results/top.png) |
| **Wrapper Integration (`wrapper.png`)** | ![Wrapper Layout](results/wrapper.png) |

---

## Key Specifications

| Parameter | Value | Units | Condition / Notes |
| :--- | :--- | :--- | :--- |
| **Technology** | IHP SG13CMOS5L | — | 130 nm CMOS Open-Source PDK |
| **Supply Voltage ($V_{DD}$)** | 1.5 | V | Single supply |
| **Quiescent Reference Current ($I_{\text{bias}}$)** | 2.5 | µA | Single external reference pin |
| **Input Common-Mode Range** | 0.3 to 1.2 | V | $0.3\text{ V} \to V_{DD}-0.3\text{ V}$ |
| **Output Common-Mode Target** | 0.75 | V | Regulated via Continuous-Time CMFB |
| **Open-Loop DC Gain ($A_v$)** | ~40 | dB | Differential |
| **Gain-Bandwidth Product (GBW)** | 40 – 50 | MHz | $C_L = 0.1\text{ pF}, R_L = 100\text{ k}\Omega$ |
| **Phase Margin (PM)** | 60 – 65 | deg | Miller compensated ($C_C = 3.5\times 21.5\,\mu\text{m}$ MOSCap, $R_C = 23.97\text{ k}\Omega$) |
| **Single-Ended Output Swing** | 0.1 to 1.3 | V | $1.2\text{ V}_{\text{pp}}$ single-ended / $2.4\text{ V}_{\text{pp}}$ differential |
| **Common-Mode Rejection Ratio (CMRR @ 100 Hz)** | **97.5 ± 11.3** | dB | Mean ± Std (PEX Monte Carlo 100 runs, Min: 78.1 dB) |
| **Power Supply Rejection Ratio (PSRR @ 100 Hz)** | **60.0 ± 9.3** | dB | Mean ± Std (PEX Monte Carlo 100 runs, Min: 45.8 dB) |
| **Spot Input Noise Density (@ 1 kHz)** | 204.1 | nV/√Hz | $1/f$ flicker noise region |
| **Thermal White Noise Floor (@ 1 MHz)** | 28.8 | nV/√Hz | High-frequency white noise floor |
| **Integrated Input Noise (1 Hz – 10 kHz)** | **19.60 ± 0.05** | µV_rms | Audio / Low-frequency band (PEX Monte Carlo) |
| **Integrated Input Noise (1 Hz – 50 MHz)** | **186.89** | µV_rms | Full GBW bandwidth ($3.1\times$ lower than 12-bit LSB) |
| **Equivalent Dynamic Range / Resolution** | 73.1 / 11.86 | dB / bits | Full-bandwidth ENOB (15.1 bits in 10 kHz band) |
| **Layout Area / Matching** | Common-Centroid PCell | — | Pattern-driven, integrated $1\times W$ dummies & row taps |
| **Verification Status** | 100% DRC / LVS Clean | — | PEX verified; submitted to Chipalooza Shuttle |

---

## Architecture Overview

1. **Input Differential Core:**
   * Uses a PMOS differential pair (`MMA`/`MMB`, $W/L = 2.5\,\mu\text{m}/2\,\mu\text{m}, m=8$) with NMOS active loads (`MMC`/`MMD`).
   * Large PMOS gate area ($320\,\mu\text{m}^2$) significantly reduces $1/f$ flicker noise, pushing the noise corner down to ~100 kHz.

2. **Class-AB Output Stage & Asymmetric Pole-Zero Decoupling:**
   * Monticelli push-pull Common-Source output drivers (`MM2` PMOS and `MM1` NMOS).
   * **Asymmetric Transconductance Trick:** By setting PMOS $W/L = 10$ ($5\,\mu\text{m}/0.5\,\mu\text{m}$) and NMOS $W/L = 0.05$ ($0.5\,\mu\text{m}/10\,\mu\text{m}$), $g_{mp}$ is made significantly larger than $g_{mn}$.
   * Pushes the NMOS feedforward zero ($z_n$) out to ultra-high frequencies well beyond GBW, eliminating dual-zero phase degradation and allowing a single $RC$ Miller network ($C_C = \text{MOSCap}, R_C = 23.97\text{ k}\Omega$) across the PMOS driver to achieve $60^\circ\text{--}65^\circ$ phase margin.

3. **Continuous-Time Common-Mode Feedback (CT-CMFB):**
   * High-precision continuous-time resistive sampling network ($R_1 = R_2 = 29.89\text{ k}\Omega$) senses output common-mode voltage ($V_{\text{cm\_calc}}$).
   * Dedicated auxiliary CMFB error OTA (`xota1`) compares $V_{\text{cm\_calc}}$ with reference $V_{\text{cm}}$ and dynamically regulates the core bias node ($V_{\text{cm\_reg}}$).

4. **Integrated Biasing & Power-Down:**
   * Requires a single external 2.5 µA current reference (`Ibias`).
   * Generates master $V_{\text{bias}}$ via diode-connected NMOS (`MME`, $L=10\,\mu\text{m}$ for high output impedance) and locally derives $V_{\text{biasp}}$ and $V_{\text{biasn}}$ for output floating gate level-shifters.
   * Integrated enable switches (`EN` / `EN_N`) actively clamp internal bias nodes in shutdown mode for zero static leakage.

5. **Automated Layout & STI Stress Mitigation:**
   * Custom dynamic PCell places unit transistors according to pattern strings (e.g., `ABBAAB BAABBA`).
   * Automatically surrounds active rows with dummy transistors ($W_{\text{dummy}} = W_{\text{dev}}, L=0.5\,\mu\text{m}$) and places substrate/well taps between rows.
   * Absorbs Shallow Trench Isolation (STI) oxide stress and cancels linear/thermal gradients across the die.

---

## Toolchain & PDK Setup

* **Schematic Capture:** Xschem
* **Simulation Engine:** NGSpice
* **Layout Capture & DRC:** KLayout
* **LVS & Extraction:** Magic VLSI
* **Process Design Kit:** IHP SG13CMOS5L 130nm Open PDK

---

## Running the Simulations

Open the main schematic in **Xschem** and configure the simulation blocks:

* **Toggling Blocks:** Select a subcircuit/code block and press **Shift + T** to enable or disable it.
* **Standard Simulation:** Execute by pressing **Ctrl + Click** on the green `simulateNGSPICE` button.

### Simulation Configurations

Ensure only the relevant configuration block is enabled for your desired test:

* **AC Analysis (Differential Gain & Phase Margin):**
  * Enable: `AC_SIM` (or `AC_LOOP_SIM`) and `xprobe1` subcircuit.
  * Disable: `Vmeas6` and `Vmeas7`.
* **Operating Point (.OP):**
  * Enable: `OP_SIM`.
  * After running, execute `OP annotate` in Xschem to display node voltages.
* **Transient Analysis:**
  * Enable: `TRAN_SIM`.
  * Disable: `xprobe1`, `Vmeas6`, and `Vmeas7`.
* **DC Sweep / Common-Mode Range:**
  * Enable: `DC_SIM` (or `DC_LOOP_SIM`).
  * Enable: `Vmeas6` and `Vmeas7`.

### Running Monte Carlo Mismatch Analysis

1. Enable `AC_SIM`, `xprobe1`, and `Libs_MISMATCH`.
2. Disable `Vmeas6`, `Vmeas7`, and `Libs_NGSPICE`.
3. Execute via parallel processing command: `SimulatePARALLEL`.

---

## Simulation Results

### Pre-Layout Simulation Results

| Analysis | Description | Plot |
| :--- | :--- | :--- |
| **Differential Gain & Phase** | Open-loop differential AC frequency response | ![Pre-layout Gain & Phase](results/op_gain_phase.svg) |
| **Common-Mode Gain ($A_{\text{cm}}$)** | Common-mode gain spectrum | ![Pre-layout CM Gain](results/cm_gain.svg) |
| **CMRR (dB)** | Common-Mode Rejection Ratio across frequency | ![Pre-layout CMRR](results/cmrr.svg) |
| **Supply Gain ($A_{\text{supply}}$)** | Open-loop supply gain spectrum | ![Pre-layout Supply Gain](results/supply_gain.svg) |
| **PSRR (dB)** | Power Supply Rejection Ratio across frequency | ![Pre-layout PSRR](results/psrr_db.svg) |
| **Schematic Monte Carlo** | Process & mismatch sweep results | ![Pre-layout MC](results/schem_mc_res.png) |

---

### Post-Layout (PEX) Simulation Results

| Analysis | Description | Plot |
| :--- | :--- | :--- |
| **PEX Differential Gain & Phase** | Extracted AC open-loop response <br> ($A_v \approx 40\text{ dB}$, $\text{PM} \approx 60^\circ\text{--}65^\circ$) | <img src="results/op_gain_phase_pex.svg" width="600"> |
| **PEX Common-Mode Gain** | Extracted common-mode gain spectrum | <img src="results/acm_db_pex.svg" width="600"> |
| **PEX CMRR (dB)** | Extracted CMRR curve | <img src="results/cmrr_pex.svg" width="600"> |
| **PEX Supply Gain** | Extracted supply gain spectrum | <img src="results/supply_gain_pex.svg" width="600"> |
| **PEX PSRR (dB)** | Extracted PSRR curve | <img src="results/psrr_pex.svg" width="600"> |
| **PEX Noise Density Spectrum** | Input-referred noise spectrum <br> ($1/f$ corner @ ~100 kHz, floor @ 28.8 nV/√Hz) | <img src="results/noise_pex.svg" width="600"> |

---

### Post-Layout (PEX) 100-Run Monte Carlo Mismatch Analysis

| Metric | Histogram / Distribution Plot | Statistical Summary |
| :--- | :--- | :--- |
| **AC Parameters (Gain, GBW, PM)** | ![PEX AC Monte Carlo](results/mc_pex_ac_results.png) | Confirms stable GBW ($40\text{--}50\text{ MHz}$) and Phase Margin ($> 60^\circ$) across mismatch. |
| **CMRR Distribution** | ![PEX CMRR Monte Carlo](results/cmrr_pex_mc.png) | Mean = **97.5 dB**, Min = **78.1 dB**, Std = **11.3 dB** @ 100 Hz. |
| **PSRR Distribution** | ![PEX PSRR Monte Carlo](results/psrr_pex_mc.png) | Mean = **60.0 dB**, Min = **45.8 dB**, Std = **9.3 dB** @ 100 Hz. |
| **Integrated Noise Distribution** | ![PEX Noise MC Histogram](results/mc_noise_pex.png) | $19.60 \pm 0.05\,\mu\text{V}_{\text{rms}}$ (1 Hz – 10 kHz band, $\sigma = 0.05\,\mu\text{V}$). |
| **Noise Spectral Curves** | ![PEX Noise MC Spectral Curves](results/noise_mc_pex.svg) | Overlay of 100 noise density curves demonstrating tight matching. |
