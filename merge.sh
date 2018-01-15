
NAMES=(
"DOWNLOAD_RATE.txt" "UPLOAD_1-10MB.txt" 
"DOWNLOAD_SIZE.txt" "UPLOAD_DURATION.txt" 
"DWLOAD_0-0.1MB.txt" "(TIMESTP,DURATION).txt" 
"UPLOAD_RATE.txt" "DWLOAD_0.1-1MB.txt" 
"(TIMESTP,SIZE).txt" "UPLOAD_SIZE.txt" 
"DWLOAD_10+MB.txt" "UPLOAD_0-0.1MB.txt" 
"DWLOAD_1-10MB.txt" "UPLOAD_0.1-1MB.txt" 
)

TARGET_ROOT_DIR=total

for CURR_DIR in ./*-anal; do
	for CURR_FILE in $CURR_DIR/*; do
		if [ -f $CURR_DIR/$CURR_FILE ]; then
			echo "copying ${CURR_DIR}/${CURR_FILE} into ${TARGET_ROOT_DIR}/${CURR_FILE}"
			cat $CURR_DIR/$CURR_FILE >> ${TARGET_ROOT_DIR}/${CURR_FILE}
		fi 
	done
done
