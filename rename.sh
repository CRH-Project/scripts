SUFFIX=.pcap
for FILE in ./*; do
	if [[ ${FILE} != *.pcap ]]; then
		if [[ ${FILE} != *.sh ]]; then
			mv ${FILE} ${FILE}${SUFFIX}
		fi
	fi
done	
