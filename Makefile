# SOD does not generally require a Makefile to build. Just drop sod.c and its accompanying
# header files on your source tree and you are done.
CC = /home/mariano/buildroot/output/host/bin/arm-linux-gnueabihf-gcc
CFLAGS = -lm -Ofast -march=armv7-a -Wall -std=c99
EXTRA = -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64  -Os

all:	license_plate batch_img_loading blob canny cnn_coco cnn_face cnn_object cnn_voc \
		crop_image dilate_image grayscale hild hough otsu realnet_face realnet_train \
		resize rnn rotate sobel

remove all : rm sod_license_plate sod_batch sod_blob sod_canny sod_cnn_coco\
			sod_cnn_face sod_cnn_object sod_voc sod_crop sod_dilate sod_gray\
			sod_hild sod_hough sod_otsu sod_realnet_face sod_realnet_train \
			sod_resize  sod_text_gen sod_rotate sod_sobel

license_plate: sod.c
	$(CC) sod.c samples/license_plate_detection.c -o sod_license_plate -I. $(CFLAGS) $(EXTRA)

batch_img_loading: sod.c
	$(CC) sod.c samples/batch_img_loading.c -o sod_batch -I. $(CFLAGS) $(EXTRA)

blob: sod.c
	$(CC) sod.c samples/blob_detection.c -o sod_blob -I. $(CFLAGS) $(EXTRA)

canny: sod.c
	$(CC) sod.c samples/canny_edge_detection.c -o sod_canny -I. $(CFLAGS) $(EXTRA)

cnn_coco: sod.c
	$(CC) sod.c samples/cnn_coco.c -o sod_cnn_coco -I. $(CFLAGS) $(EXTRA)

cnn_face: sod.c
	$(CC) sod.c samples/cnn_face_detection.c -o sod_cnn_face -I. $(CFLAGS) $(EXTRA)

cnn_object: sod.c
	$(CC) sod.c samples/cnn_object_detection.c -o sod_cnn_object -I. $(CFLAGS) $(EXTRA)

cnn_voc: sod.c
	$(CC) sod.c samples/cnn_voc.c -o sod_voc -I. $(CFLAGS) $(EXTRA)
crop_image: sod.c
	$(CC) sod.c samples/crop_image.c -o sod_crop -I. $(CFLAGS) $(EXTRA)

dilate_image: sod.c
	$(CC) sod.c samples/dilate_img.c -o sod_dilate -I. $(CFLAGS) $(EXTRA)

grayscale: sod.c
	$(CC) sod.c samples/grayscale.c -o sod_gray -I. $(CFLAGS) $(EXTRA)

hild: sod.c
	$(CC) sod.c samples/hilditch_thin.c -o sod_hild -I. $(CFLAGS) $(EXTRA)

hough: sod.c
	$(CC) sod.c samples/hough_lines_detection.c -o sod_hough -I. $(CFLAGS) $(EXTRA)

otsu: sod.c
	$(CC) sod.c samples/otsu_image.c -o sod_otsu -I. $(CFLAGS) $(EXTRA)

realnet_face: sod.c
	$(CC) sod.c samples/realnet_face_detection.c -o sod_realnet_face -I. $(CFLAGS) $(EXTRA)

realnet_train: sod.c
	$(CC) sod.c samples/realnet_train_model.c -o sod_realnet_train -I. $(CFLAGS) $(EXTRA)

resize: sod.c
	$(CC) sod.c samples/resize_image.c -o sod_resize -I. $(CFLAGS) $(EXTRA)

rnn: sod.c
	$(CC) sod.c samples/rnn_text_gen.c -o sod_text_gen -I. $(CFLAGS) $(EXTRA)

rotate: sod.c
	$(CC) sod.c samples/rotate_image.c -o sod_rotate -I. $(CFLAGS) $(EXTRA)

sobel: sod.c
	$(CC) sod.c samples/sobel_operator_img.c -o sod_sobel -I. $(CFLAGS) $(EXTRA)

