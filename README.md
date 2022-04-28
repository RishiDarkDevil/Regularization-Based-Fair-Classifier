# Classifier Fairness
Here I address the issue of fairness in Machine Learning classification algorithms. In many daily life scenario, where machine learning is gradually being incorporated in various applications, it becomes increasing important to address the issue of fairness i.e. our model should not discriminate among individuals based on their color, caste, race, sex, etc. 

Unfortunately, various machine learning algorithms if not addressed with proper fairness intervention will happily increase accuracy but will not consider providing a fair output. After all we train models to remove the human biasedness from making a decision in many situations. So, it is imporrtant to address this issue and we do that here. 

We discuss about various metrics, definitions, implementations and techniques to mitigate unfairness in trained model here.

To view our analysis in sequential order, see `Fair-Classifier.ipynb`.

The file descriptions:
- `Fair-Classifier.ipynb`: Introduction to why Fairness is an issue, Fairness Metric Definitions, Fairness Definitions, Index of techniques widely used and developed till now to address fairness issue in machine learning models and data.
- `Fairness-Definitions-Comparison.ipynb`: Application of the definitions seen in above file on a dataset. Comparing the value obtained from several metrics and deciding whether the data is fair or not and evaluating fairness of the trained model.
- `Fairness-New-Definitions.ipynb`: New fairness definitions(PIL Test) presented along with discussion on each definition.
- `Fairness-Regularization.ipynb`: Fairness based Regularization technique presented and implementation .
- `PIL-Test-Implementation.ipynb`: Implementation of PIL Test as described in `Fairness-New-Definitions.ipynb`.
- `Regularisation.R`: It contains the R-Code to perform the regularization based on minimizing FPR and FNR, it is not working yet.
- `Fairness New Definition.pdf`: It contains a possibly new definition for fairness.

I have learnt several important concepts and packages while doing this project, which includes:
- **PyTorch, aif360**: I have learnt PyTorch to implement NNs and have exploited it's autograd feature to fit custom regularized model based on minimizing fairness imbalance of the trained model. I also learnt the aif360 package which consists of several fairness based metrics and dataset for easier computation and implementation of fairness at all levels starting from fairness pre-processing to post-processing.
- **Practical Fairness**: I have read almost the entire book of 'Practical Fairness' while doing this project.
- **Research Paper Implementation**: I have gone through several research papers and implemented them while doing this project which includes `Fairness Definitions Explained` from 2018 ACM/IEEE International Workshop on Software Fairness and `Learning Fair Classifiers: A Regularization-Inspired Approach` from FATML, August 2017, Halifax, Nova Scotia, Canada.

