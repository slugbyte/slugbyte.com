all: upload 

upload: 
	aws s3 cp $(PWD)/public/ s3://slugbyte.com --recursive --acl public-read

clear-cache:
	aws cloudfront create-invalidation --distribution-id EO5JGNONFCIDZ --paths '/*'

