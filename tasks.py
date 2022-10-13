from worker import app
import psutil

@app.task
def simple_task():
    processes = []
    for p in psutil.process_iter(['name', 'pid']):
        processes.append([p.name, p.pid])
    print(processes)
    return 1+1
