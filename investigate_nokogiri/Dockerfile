FROM ruby:3.0.4-bullseye

RUN apt update \
  && apt dist-upgrade -y \
  && apt install -y --no-install-recommends \
    vim \
    build-essential \
    git \
    libxml2-dev \
    libxslt-dev \
  && rm -rf \
    /var/lib/apt/lists/*_*

RUN git clone https://github.com/sparklemotion/nokogiri.git \
    cd nokogiri \
    bundle install \
    bundle exec rake compile \
    git reset --hard HEAD \
    bundle exec ruby ./test.rb