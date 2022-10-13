from celery import Celery

from celeryconfig import CeleryConfig

app = Celery("tasks")
app.config_from_object(CeleryConfig)
