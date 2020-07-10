FROM   python:3.8

RUN mkdir -p /usr/src/app
WORKDIR  /usr/src/app

COPY .  /usr/src/app
RUN pip install --no-cache-dir -r requirements.txt

#слушаем порт
EXPOSE 8080

ENV TZ Europe/Moscow

# команда при запуске контейнера
# CMD ["python", "app.py"]

#команда при запуске контейнера, не перезаписываемая при запуске из командной строки.
# команды из командной строки запуска контейнера добавляются в качестве аргументов в скрипт запуска
ENTRYPOINT  ["python", "app.py", "my_var"]
# приводит к тому, что контейнер, при запуске, запускает Python-скрипт app.py с аргументом my_var.