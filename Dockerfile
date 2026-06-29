FROM thiyaku17/wzmlx:frozen

WORKDIR /usr/src/app

RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN uv pip install --python /wzvenv/bin/python --no-cache-dir -r requirements.txt

COPY . .

ENTRYPOINT ["bash", "start.sh"]