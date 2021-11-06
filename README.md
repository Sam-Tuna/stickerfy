# stickerfy
Stickerfy is a script to make telegram stickers using [ImageMagick](https://imagemagick.org/index.php).
It shrinks the inputted pictures to the 512x512px size required by telegram, and fills them with transparency if the images are not square.
You might not be able to submit to telegram images that are too big since telegram also requires a maximum size of 512Kb, but those you can compress afterwards.

```
Usage: stickerfy -i img1 -i img2 ...
Note: imagemagick supports bzlib cairo djvu fontconfig freetype heic jbig jng jp2 jpeg lcms lqr ltdl lzma openexr pangocairo png raqm raw rsvg tiff webp wmf x xml zip zlib
