FROM ubuntu:20.10 as builder

RUN apt update && apt install -y curl git unzip xz-utils zip libglu1-mesa openjdk-8-jdk wget
WORKDIR /root

#Installing Android SDK
RUN mkdir -p Android/sdk
ENV ANDROID_SDK_ROOT /root/Android/sdk
RUN mkdir -p .android && touch .android/repositories.cfg
RUN wget -O sdk-tools.zip https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
RUN unzip sdk-tools.zip && rm sdk-tools.zip
RUN mv tools Android/sdk/tools
ENV PATH "$PATH:/root/Android/sdk/tools:/root/Android/sdk/tools/bin"
RUN yes | sdkmanager --licenses
RUN sdkmanager "build-tools;29.0.2" "patcher;v4" "platform-tools" "platforms;android-29" "sources;android-29" 
# "system-images;android-29;google_apis;x86" "emulator"
# ENV PATH "$PATH:/root/Android/sdk/emulator:/root/Android/sdk/platform-tools"
# RUN avdmanager --verbose create avd --force --name "test" --device "pixel" --package "system-images;android-29;google_apis;x86" --tag "google_apis" --abi "x86"
ENV PATH "$PATH:/root/Android/sdk/platform-tools"

# COPY start_emulator.sh /root/start_emulator.sh
# RUN chmod +x start_emulator.sh

#Installing Flutter SDK
RUN git clone https://github.com/flutter/flutter.git
ENV PATH "$PATH:/root/flutter/bin"
RUN flutter channel dev
RUN flutter upgrade
RUN flutter doctor

RUN mkdir app
WORKDIR /root/app