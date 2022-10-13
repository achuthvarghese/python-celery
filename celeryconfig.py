class CeleryConfig:
    broker_url = "redis://{}:{}/{}".format("redis", 6379, 0)
    result_backend = "redis://{}:{}/{}".format("redis", 6379, 0)
    imports = ("tasks",)
    enable_utc = True
