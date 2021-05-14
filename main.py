import os
from typing import Optional

from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def read_root():
    return {"Hello": "World"}

@app.get("/env")
def get_env():
    result = dict()
    for k, v in os.environ.items():
        result.update({
            k:v
        })
    return result



@app.get("/items/{item_id}")
def read_item(item_id: int, q: Optional[str] = None):
    return {"item_id": item_id, "q": q}
