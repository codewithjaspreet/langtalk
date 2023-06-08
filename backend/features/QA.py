from langchain.chains import ConversationalRetrievalChain     # for keeping chat history
from langchain.text_splitter import CharacterTextSplitter
from langchain.embeddings import OpenAIEmbeddings
from langchain.docstore import Chroma
from backend.features.summarizations import loadAPI

from pypdf import PyPDFLoader
loader = PyPDFLoader("IEC Certificate Updated.pdf")
documents = loader.load()

loadAPI()


def QA():

    text_splitter = CharacterTextSplitter(chunk_size=1000, chunk_overlap=0)


    texts = text_splitter.split_documents(documents)

    # select which embeddings we want to use
    embeddings = OpenAIEmbeddings()
    # create the vectorestore to use as the index
    db = Chroma.from_documents(texts, embeddings)

    # expose this index in a retriever interface
    retriever = db.as_retriever(search_type="similarity", search_kwargs={"k":2})
    # create a chain to answer questions 
    qa = ConversationalRetrievalChain.from_llm(OpenAI(), retriever)

    chat_history = []

    query = "what is the  Name of the Signatory?"
    result = qa({"question": query, "chat_history": chat_history})



