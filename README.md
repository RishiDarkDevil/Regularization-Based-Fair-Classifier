# Classifier Fairness
Here I address the issue of fairness in Machine Learning classification algorithms. In many daily life scenario, where machine learning is gradually bein incorporated in various applications, it becomes increasing important to address the issue of fairness i.e. our model should not discriminate among individuals based on their color, caste, race, sex, etc. 

Unfortunately, various machine learning algorithms if not addressed with proper fairness intervention will happily increase accuracy but will not consider providing a fair output. After all we train models to remove the human biasedness from making a decision in many situations. So, it is imporrtant to address this issue and we do that here. 

We discuss about various metrics, definitions, implementations and techniques to mitigate unfairness in trained model here.

To view our analysis in sequential order, see `Fair-Classifier.ipynb`.

The file descriptions:
- `Fair-Classifier.ipynb`: Introduction to why Fairness is an issue, Fairness Metric Definitions, Fairness Definitions, Index of techniques widely used and developed till now to address fairness issue in machine learning models and data.
- `Fairness-Definitions-Comparison.ipynb`: Application of the definitions seen in above file on a dataset. Comparing the value obtained from several metrics and deciding whether the data is fair or not and evaluating fairness of the trained model.
- `Fairness-New-Definitions.ipynb`: New fairness definitions presented along with discussion on each definition.
- `Regularisation.R`: It contains the R-Code to perform the regularization based on minimizing FPR and FNR, it is not working yet.
- `Fairness New Definition.pdf`: It contains a possibly new definition for fairness.
