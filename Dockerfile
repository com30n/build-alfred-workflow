FROM alpine:3.16.7

RUN apk add --no-cache \
	bash python zip

COPY entrypoint.sh /entrypoint.sh
COPY extract_name.py /extract_name.py
COPY template_info_plist.py /template_info_plist.py

ENTRYPOINT ["/entrypoint.sh"]
