# -SVD-based-image-reconstruction

- Load the hendrix_final.png image and extract the R, G and B channels. 
- Convert each channel image to double precision. 
- Then execute the SVD separately on the R, G and B channels of the image. Plot (using a log-log plot) the non-zero singular values for the R channel. 
- Comment on the nature of the plot. Plot the Frobenius norm of the reconstruction error matrix for each channel w.r.t. the dimension (increasing from 1 to the rank) and display the original and final reconstructed images (combined from R, G and B reconstructions) 
