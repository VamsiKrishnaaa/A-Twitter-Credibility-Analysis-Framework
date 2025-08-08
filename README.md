Twitter Credibility Prediction Framework
Project Overview
This project predicts the credibility of Twitter tweets by classifying them as either Real or Fake. It uses machine learning algorithms trained on a dataset of tweets labeled as fake or real news. The prediction model is integrated into a Django web application where users can input tweet URLs, headlines, and message bodies to get real-time credibility predictions.

The classification model uses an ensemble of machine learning classifiers including:
- Multinomial Naive Bayes
- Support Vector Machine (LinearSVC)
- Logistic Regression
- Decision Tree Classifier

These models are combined using a Voting Classifier to improve accuracy.
Folder Structure
tcreo/                         # Root Django project folder
├── Remote_User/               # Django app handling user features and predictions
│   ├── migrations/            # Database migrations for the app
│   ├── templates/             # HTML templates
│   │   └── RUser/
│   │       └── Predict_Twitter_Credibility_Type.html  # Main prediction page template
│   ├── __init__.py
│   ├── admin.py
│   ├── apps.py
│   ├── models.py              # Django models including Credibility_Prediction
│   ├── tests.py
│   ├── urls.py
│   └── views.py               # View functions including prediction logic
├── Service_Provider/          # Service provider app with admin/analytics features
├── tcreo/                    # Project configuration folder
│   ├── settings.py
│   ├── urls.py                # Main URL routing file
│   └── wsgi.py
├── News_Data.csv              # Dataset used for training the model
├── manage.py                  # Django management command script
├── requirements.txt           # Python dependencies list
└── README.md                  # This file
Setup Instructions
1. Clone the Repository
   ```bash
   git clone <repository-url>
   cd tcreo
   ```

2. Create and Activate Virtual Environment
   ```bash
   python3 -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. Install Dependencies
   ```bash
   pip install -r requirements.txt
   ```

4. Download NLTK Data
   This project uses NLTK stopwords and rslp stemmer data, so download them if not already present:
   ```python
   import nltk
   nltk.download('stopwords')
   nltk.download('rslp')
   ```

5. Apply Database Migrations
   ```bash
   python manage.py makemigrations
   python manage.py migrate
   ```

6. Run the Django Development Server
   ```bash
   python manage.py runserver
   ```

7. Access the Application
   Open your browser and navigate to:
   http://127.0.0.1:8000/Predict_Twitter_Credibility_Type/


How to Use
- Enter the Tweet URL (optional), Tweet Headline (optional), and the Tweet Message body (required).
- Click Predict.
- The system will classify the tweet as either Real or Fake based on the trained machine learning model.
- The prediction is saved in the database and shown on the results page.


Example Use Case
This project can be used by journalists, social media analysts, and fact-checkers to quickly evaluate the credibility of tweets and detect misinformation or fake news on social platforms. It helps reduce the spread of false information by providing an automated credibility check.


Technologies and Skills Used
- Python 3.x
- Django Web Framework
- Machine Learning with scikit-learn (Naive Bayes, SVM, Logistic Regression, Decision Tree, Voting Classifier)
- Natural Language Processing (NLP) with NLTK
- Pandas & NumPy for data manipulation
- HTML/CSS for frontend templates


Notes
- The prediction model is trained on News_Data.csv, located in the root directory.
- The ML model retrains every time a prediction request is made; consider optimizing by saving/loading a trained model for production.
- This is a proof-of-concept and can be further extended with real-time Twitter API integration and advanced NLP techniques.
