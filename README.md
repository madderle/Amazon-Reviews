# Amazon Reviews


### Goal
The goal of this project was 2 fold:
1. Create a model to predict if a review was positive or not just based on the text.
2. Use the Docker-Workflow I created.


### Plan

Since I am trying to model if a review is positive or not I need to do some sort of analysis
and I can use NLTK and Spacy to generate features so I can use a model.
I wanted to see if I can build a Naive Bayes model to predict solely on the text. More
specifically Im using a bag of words approach and generating lots of tokens. This means my
dataset will not only have lots of reviews, but potentially hundreds of features. I needed
way to deal with this and not lose my sanity thats why I came up with the Docker-workflow.

### Docker workflow

The point of this is to be able to easily transfer my work to a much larger computer
so I can increase my work efficiency. Docker is the perfect tool for this. Because I
can setup my project on my development machine initially and if I need a better computer to
speed up execution, I can spin up a larger EC2 instance.

![Overall](../master/Diagram.png)

#### Process Metrics
| Activity      | Development Computer(sec) | Large Development Computer(sec) |
| ------------- | :-------------------:     | -------------------------:     |
| NLP Tokens    | 265                       | 28                             |
| Bag of Words  | 262                       | 21                             |
| Select K best | Kernel Crashed            | 0.79                           |

#### Workflow Setup  Steps
1. Create AMI with Git, Docker and Docker-compose
2. Create Githup repo
3. Create project locally with a Dockerfile and Docker-compose file
4. Data in S3 bucket
5. Create EC2 instance


#### Workflow execution
1. Push changes to Github from Development machine
2. Pull changes from Github to Large Development machine
3. Execute Command: docker-compose up
4. Open Jupyter Notebook.
