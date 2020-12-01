#!/usr/bin/env python3

from clusters import *
from PIL import ImageTk, Image
import os

year=input("enter a year ")

rownames, colnames, data = readfile('./{}_cars.csv'.format(year))

car_cluster = hcluster(rotatematrix(data))
drawdendrogram(car_cluster, colnames, jpeg="./outputs/{}_cluster.jpg".format(year))

car_cluser_tanamoto = hcluster(data, distance=tanamoto)
drawdendrogram(car_cluser_tanamoto, colnames, jpeg="./outputs/{}_tanamoto_cluster.jpg".format(year))