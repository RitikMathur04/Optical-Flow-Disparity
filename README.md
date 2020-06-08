# Optical-Flow-Disparity-Error-Calculation-and-Visualization
This repository provides a comparison tool for optical flow algorithms by evaluating and visualizing flow error and disparity error based on ground truth values.
The code has been implemented in MATLAB which integrates computation, visualization and programming in an easy-to-use way.
## Quick Start
To quickly understand the fundamental concepts and implementation, run demo.m which accepts the ground truth and estimated flow and disparity map as inputs for optical flow error and disparity error calculation and display respectively.
## Optical Flow Datasets
Refer this review paper on "Evaluation Datasets and Benchmarks for Optical Flow Algorithms: A Review" to select preferable datasets for key implementation of a specific task and training : http://ijcsmc.com/docs/papers/June2020/V9I6202004.pdf
## Usage
### Flow Demo
flow_read() → loads flow field F from PNG image <br>
flow_visualization → displays the color-map and visualization of
optical flow with u and v as inputs to the function (here u and v
refers to the horizontal and vertical components of flow field
respectively) and outputs uint8 image of cyclic encoding<br>
flow_error → calculates flow error between flow field and ground
truth<br>
flow_error_image → displays flow error between flow field and
ground truth<br>
flow_write → saves flow field F to png format<br>
### Stereo Demo
disp_read() → loads disparity map D from PNG image<br>
stereo_visualization → displays the color-map and visualization of
stereo-disparity with disparity (the horizontal component of flow
field) as input and outputs uint8 image of cyclic encoding<br>
disp_error → calculates disparity error between input and ground
truth<br>
disp_error_image → displays disparity map between input and
ground truth<br>
disp_write → saves disparity map D to png format<br>
## Example
Read Flow F=flow_read('estimatedflow.png') <br>
Horizontal Flow Component u=F(:,:,1)<br>
Vertical Flow Component v=F(:,:,2)<br>
Flow Visualization [rgbImage1, rgbImage2, rgbImage3] = flow_visualization( u, v, valid, meanU, meanV )<br>
Read Ground Truth Flow G=flow_read('gt.png')<br>
Calculate Flow Error d_err = disp_error (G,F,colorthreshold)<br>
Display Flow Error image(rgbImage1/2/3)<br>
## Results
The estimated, ground and error map for disparity and optical flow with calculated error is shown in the images.
![alt text] (https://github.com/RitikMathur04/Optical-Flow-Disparity-Error-Calculation-and-Visualization/blob/master/1.png?raw=true)
## Support
If you really like this repository and find it useful, please consider (★) starring it, so that it can reach a broader audience of like-minded people. It would be highly appreciated :) !
## Author
Ritik Mathur<br>
Email: rmathur@me.iitr.ac.in <br>
UG Electrical Engineering<br>
Indian Institute of Technology Roorkee, Uttarakhand, India<br>
## More Information
This project and review paper (http://ijcsmc.com/docs/papers/June2020/V9I6202004.pdf) have been implemented as a part of my internship "Optical Flow Algorithms" at National Tsing Hua University, Taiwan under the supervision of Prof Chung-Chuan Lo,Ph.D., Professor and Director at the Institute of Systems Neuroscience, NTHU, Taiwan (https://scholar.google.com/citations?user=zULxPHYAAAAJ&hl=en)<br>
The main aim of the internship is to code, review and provide a benchmark test for promising optical flow algorithms.<br>
The internship is accomplished in online mode due to COVID-19 travel restrictions and lockdown situation.<br>
