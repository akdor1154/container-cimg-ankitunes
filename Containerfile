FROM docker.io/cimg/python:3.8

USER root

RUN curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash - \
	&& apt-get -y update \
	&& apt-get -y install \
		xvfb \
		libxcursor1 \
		libxkbcommon0 \
		libxkbcommon-x11-0 \
		libasound2 \
		x11-utils \
		nodejs \
		openbox \
		scrot \
		python3-pyqt5 python3-pip

RUN python -m pip install --upgrade pip \
	&& python -m pip install --upgrade poetry

USER circleci

RUN poetry config virtualenvs.in-project true