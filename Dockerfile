FROM elsysgrader/python-grading-common:latest
RUN pip install jupyter
COPY Example.ipynb Example.ipynb
EXPOSE 8888

CMD jupyter notebook --allow-root --no-browser --ip=0.0.0.0 Example.ipynb
