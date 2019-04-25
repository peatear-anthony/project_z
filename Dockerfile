#

FROM schramm/magenta-gpu:latest

# ==================================================================
# Download Notebooks from GitHub
# ------------------------------------------------------------------
RUN apt-get update && apt-get install nano && \
	cd ~ && \
	GIT_CLONE="git clone --depth 10" && \
	$GIT_CLONE https://github.com/peatear-anthony/project_z && \
	cd project_z && \
	chmod +x run.sh && \
# ==================================================================
# Remove Unwanted Files/ Create the New Directory for the Magenta Files
# ------------------------------------------------------------------
	cd ~ && \
	rm -rf magenta-data && \
	mkdir magenta-data 

WORKDIR /root/project_z