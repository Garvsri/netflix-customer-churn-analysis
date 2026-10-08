# Netflix Customer Churn Prediction

## Overview

This project predicts customer churn and identifies high-risk customers
using machine learning and SQL-based analysis.

## Dataset

The dataset contains 5,000 customer records with information about:

- Age
- Gender
- Subscription type
- Watch hours
- Last login days
- Region
- Device
- Monthly fee
- Payment method
- Number of profiles
- Average watch time
- Favorite genre
- Churn status

## Machine Learning

Two classification models were evaluated:

1. Logistic Regression
2. Gradient Boosting

### Results

| Model | Accuracy | Precision | Recall | F1 | ROC-AUC |
|---|---:|---:|---:|---:|---:|
| Logistic Regression | 89.1% | 87.6% | 91.3% | 89.4% | 96.7% |
| Gradient Boosting | 98.9% | 99.0% | 98.8% | 98.9% | 99.8% |

Gradient Boosting was selected as the final model.

## Explainability

SHAP was used to understand model predictions.

The most influential features were:

- Average watch time per day
- Last login days
- Watch hours
- Number of profiles
- Payment method

## Business Application

The system generates:

- Churn probability
- Customer risk level
- Recommended retention action

Example:

> High churn probability → Re-engagement campaign + personalized content recommendation.

## Technologies

- Python
- Pandas
- NumPy
- Scikit-learn
- SHAP
- Matplotlib
- Seaborn
- SQLite
- SQL
- Jupyter Notebook

## Project Structure

```text
├── customer_churn.ipynb
├── customer_churn.csv
├── churn_analysis.sql
├── customer_churn_risk_predictions.csv
├── gradient_boosting_churn_model.pkl
└── README.md
