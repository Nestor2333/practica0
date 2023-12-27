import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score

def base_model(x, y):
    x_train, x_test, y_train, y_test = train_test_split(x, y, test_size = 0.1, random_state = 690037124)
    
    num_pred = y_test.shape[0]
    
    base_pred = np.zeros(131, dtype = np.int64)
    base_accuracy = accuracy_score(y_test, base_pred)
    
    return base_pred, base_accuracy