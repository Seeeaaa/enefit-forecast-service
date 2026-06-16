# Energy Forecast Service

An API and web interface for Enefit Energy Forecasting (based on 2023 Kaggle competition).

## Project Structure
* `src/app/` - FastAPI backend application
* `src/frontend/` - Streamlit frontend dashboard
* `src/data/` - Test dataset
* `src/models/` - Trained model files

## How to Run

### Using Docker (Recommended)
Build and run both services:
```bash
docker compose up --build
```
* **API Backend**: http://localhost:8000
* **Streamlit UI**: http://localhost:8501

### Running Locally with uv
1. Install dependencies and the package:
   ```bash
   uv pip install -e .
   ```
2. Run the FastAPI backend:
   ```bash
   uv run uvicorn app.main:app --host 0.0.0.0 --port 8000
   ```
3. Run the Streamlit frontend:
   ```bash
   uv run streamlit run src/frontend/app.py --server.port=8501 --server.address=0.0.0.0
   ```
