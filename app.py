import streamlit as st 
import pandas as pd

df = pd.read_csv("test_cev.csv")


st.line_chart(df)

st.text("its updated")