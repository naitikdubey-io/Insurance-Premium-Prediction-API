
# Insurance Premium Prediction API

A production-ready machine learning service that predicts insurance premiums using a **Random Forest Classifier**. The project features a RESTful API built with **FastAPI**, data validation via **Pydantic**, and is fully **Dockerized** for consistent deployment.

## 🚀 Features
* **Machine Learning Model:** Random Forest Classifier with **90% accuracy**.
* **REST API:** Built with FastAPI for high-performance asynchronous endpoints.
* **Data Validation:** Strict schema enforcement using Pydantic models.
* **Containerization:** Dockerized environment for "plug-and-play" deployment.
* **Auto-Documentation:** Interactive Swagger UI available at `/docs`.

---

## 🛠️ Tech Stack
* **Language:** Python
* **ML Libraries:** Scikit-Learn, Pandas, NumPy
* **API Framework:** FastAPI, Uvicorn
* **Data Validation:** Pydantic
* **DevOps:** Docker

---

## 📦 Getting Started

### Prerequisites
* [Docker](https://www.docker.com/get-started) installed on your machine.
* (Optional) Python 3.9+ if running locally without Docker.

### Running with Docker (Recommended)
1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/insurance-premium-prediction.git
   cd insurance-premium-prediction
   ```

2. **Build the Docker image:**
   ```bash
   docker build -t insurance-app .
   ```

3. **Run the container:**
   ```bash
   docker run -p 8000:8000 insurance-app
   ```
   The API will now be accessible at `http://localhost:8000`.

---

## 🚦 API Usage

### Interactive Documentation
Once the server is running, you can explore the API and send test requests via:
* **Swagger UI:** `http://localhost:8000/docs`
* **Redoc:** `http://localhost:8000/redoc`

### Example Request Body
The API expects a JSON object containing user details. Example:

```json
{
  "age": 35,
  "wight": 67.5,
  "Height": 1.72,
  "smoker": "no",
  "city": "Mumbai",
  "occupation" : "private_job"
}
```

---

## 📊 Model Performance
The model was trained on the [Dataset Name, e.g., Medical Cost Personal Dataset] and evaluated using standard classification metrics:

* **Accuracy:** 0.90
* **Model Type:** Random Forest Classifier
  
---

## 📂 Project Structure
```text
├── pydantic/            # Pydantic schema definitions
├── myenv/               # Virtual environment (local only)
├── app.py               # Main application entry point
├── main.py              # FastAPI routes and logic
├── frontend.py          # Frontend UI implementation
├── model.ipynb          # Jupyter notebook for model training
├── model.pkl            # Trained Random Forest model (serialized)
├── insurance (1).csv    # Training dataset
├── patients.json        # Sample data for testing
├── Dockerfile           # Docker configuration
├── requirements.txt     # Project dependencies
└── __pycache__/        # Compiled Python files
```

---

