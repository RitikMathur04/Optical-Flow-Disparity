function overlayImage = createOverlayImage( image, visImage )
%Create an overlay of the input image and visualization of the
%correspondences

%determine characteristics of input image
[height, width, channels] = size( image);
maxImage = double( max( image( : ) ) );

maxVis = 2^ceil( log2( double( max( visImage(:) ) ) ) );


%transfer input image to 3 channel rgb image with grayvalues in [0,1]
if ( 1 < channels )
    image = sum( double( image ), 3 )/channels;
else
    image = double( image );
end

image = image / maxImage; 
image = repmat( image, [1,1,3] );

%Add images for overlay
overlayImage = maxVis * image * 0.5 + double( visImage ) * 0.5;
overlayImage = cast( overlayImage, class( visImage ) );



    
