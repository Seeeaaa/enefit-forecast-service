from fastapi import FastAPI
from pydantic import BaseModel


class PredictionData(BaseModel):
    county: int
    installed_capacity: float


app = FastAPI()
items = []


@app.get("/")
def root():
    return "Energy Consumption and Production Predictions"


@app.post("/predict")
def predict(data: PredictionData):
    target = data.county * data.installed_capacity
    return {"prediction": target}
