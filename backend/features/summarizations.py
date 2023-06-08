from langchain import OpenAI, PromptTemplate, LLMChain
from langchain.text_splitter import CharacterTextSplitter
from langchain.chains.mapreduce import MapReduceChain
from langchain.prompts import PromptTemplate
from langchain.docstore.document import Document
from langchain.chains.summarize import load_summarize_chain

import os
import openai
 
def loadAPI():
    openai.api_key = os.environ["OPENAI_API_KEY"]

# summarization of the document using map reduce chain
def summariseDOC():


    llm = OpenAI(temperature=0)

    text_splitter = CharacterTextSplitter()


    with open("backend/xzagf.txt") as f:
        file_content = f.read()
    texts = text_splitter.split_text(file_content)


    docs = [Document(page_content=t) for t in texts[:3]]
    chain = load_summarize_chain(llm, chain_type="map_reduce")
    output = chain.run(docs)

    return output



loadAPI()
print(summariseDOC())