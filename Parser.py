import requests
import sched, time

s = sched.scheduler(time.time, time.sleep)
def do_something(sc): 
    data = requests.get('https://www.cbr-xml-daily.ru/daily_json.js').json()
    print(data)
    # Время повторения cек
    s.enter(120, 1, do_something, (sc,))
# Время повторения сек
s.enter(120, 1, do_something, (s,))
s.run()
