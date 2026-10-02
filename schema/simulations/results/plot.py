import os
import itertools
import subprocess
from multiprocessing import Pool
import re
import csv
import numpy as np
import time
import sys
import matplotlib.pyplot as plt
import math
# --- restore results_plot_list from the CSV header if needed ---
results_plot_list = None
start_time = time.time()
final_result_file="./ota_cmfb_top_pex_tb_mc_results.csv"
if not results_plot_list and os.path.exists(final_result_file):
    with open(final_result_file, mode='r', newline='') as csvfile:
        reader = csv.reader(csvfile, delimiter=';')
        header = next(reader, None)
        if header:
            results_plot_list = [h.strip() for h in header if h.strip()]
if len(results_plot_list) > 0:
# make dictionary with results
    results_dict = {}
    with open(final_result_file, mode='r', newline='') as csvfile:
        reader = csv.DictReader(csvfile, delimiter=';')

        # Initialize dictionary with keys from the header
        for header in reader.fieldnames:
            results_dict[header] = []

        # Fill the dictionary
        for row in reader:
            for header in reader.fieldnames:
                results_dict[header].append(float(row[header]))

    # Set the number of columns for subplot grid
    n_cols = 2  # Change this to 1, 2, 3, etc.
    n_plots = len(results_plot_list)
    n_rows = math.ceil(n_plots / n_cols)

    # Create subplots
    fig, axs = plt.subplots(n_rows, n_cols, figsize=(6 * n_cols, 4 * n_rows))
    axs = axs.flatten()  # Flatten in case of multiple rows/columns
    i = 0
    for var in results_plot_list:
        data = np.array(results_dict[var.lower()])
        mean = data.mean()
        max_val = data.max()
        min_val = data.min()
        std = data.std()
        axs[i].hist(data, bins=50, color='skyblue', edgecolor='black')
        axs[i].set_title(f"\n\nHistogram of {var}, number of points: {data.size}, \nmin: {min_val}, \nmax: {max_val}, \nmean: {mean}, \nstd={std}")
        axs[i].set_xlabel(f"{var}")
        axs[i].set_ylabel("Count")
        ymax = axs[i].get_ylim()[1]

        # Plot mean line (solid green)
        axs[i].axvline(mean, color='green', linestyle='-', linewidth=2)
        axs[i].text(mean, ymax * 0.95, 'Mean', color='green', rotation=90, verticalalignment='top', horizontalalignment='center')

        # Plot sigma lines (dashed red)
        for sigma_mult in [1, 2, 3]:
            pos = mean + sigma_mult * std
            neg = mean - sigma_mult * std

            axs[i].axvline(pos, color='red', linestyle='--', linewidth=1)
            axs[i].axvline(neg, color='red', linestyle='--', linewidth=1)

            # Labels for sigma lines with a slight vertical offset to avoid overlap
            y_pos = ymax * (1 - 0.1 * sigma_mult)

            axs[i].text(pos, y_pos, f'+{sigma_mult}σ', color='red', rotation=90, verticalalignment='top', horizontalalignment='right')
            axs[i].text(neg, y_pos, f'-{sigma_mult}σ', color='red', rotation=90, verticalalignment='top', horizontalalignment='left')

        # Set more x-axis ticks for better readability
        x_min = mean - 4 * std
        x_max = mean + 4 * std
        ticks = np.arange(x_min, x_max + std/2, std/2)
        axs[i].set_xticks(ticks)
        i = i + 1

    # Hide unused subplots
    for j in range(i, len(axs)):
        axs[j].axis('off')
    plt.tight_layout()
    plt.show()

    end_time = time.time()
    runtime = end_time - start_time
    hours = int(runtime // 3600)
    minutes = int((runtime % 3600) // 60)
    seconds = int(runtime % 60)
    print(f"Runtime: {hours:02}:{minutes:02}:{seconds:02}")

