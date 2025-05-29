# Project Overview



In this project we will use supervised and unsupervised Machine Learning algorithms to analyze Reckitt sales data. Reckitt is a multinational company dedicated to the generation of health, hygiene and household cleaning products. Among its most prominent products are Vanish, Lysol, Harpic, Dettol, durex, among others.



The data to be analyzed come from the sales of Vanish and Lysol pre-wash, bleach, and sanitizer products, respectively. The objective of this project is to evaluate the sales performance of Vanish and Lysol products, identify key opportunities to grow the market and sales, and make sales forecasts for both brands.



**This project was part of EBAC's Data Scientist Certificate**

<div align="center"><img src="https://github.com/victorve-l/Reckitt_EBAC/blob/main/Templates/Logo.png?raw=true" width="500" height="600" /></div>



## Proyect Structure

1.- <a href="#introduction">Introduction ⚡</a>



2.- <a href="#python-libraries">Python libraries and other methods used 🔍</a>



3.- <a href="#data-collection-wrangling">Data collection and Wrangling 📁</a>



4.- <a href="#exploratory-data-analysis">Exploratory Data Analysis (EDA)🔭</a>



5.- <a href="#data-visualization">Data Visualization 📊</a>



6.- <a href="#segmentation-k-means">Segmentation with K-means Clustering 📚</a>



7.- <a href="#time-series-forecasting">Time Series Forecasting 📈</a>



8.- <a href="#conclusions">Conclusions 📒</a>




<br>

<h2 id="introduction">Introduction ⚡</h2>

<p>In this project, we will use Data Science to evaluate the current sales strategy of Reckitt's products. In particular, we will focus on Vanish (pre-washers and bleachers) and Lysol (sanitizers) products.</p>

<div style="display: flex; align-items: center;">

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://m.media-amazon.com/images/I/61F3YLj2edL._AC_UF1000,1000_QL80_.jpg" alt="Vanish" style="width:110px; margin-right: 6px;"> <img src="https://eu-images.contentstack.com/v3/assets/blt9ca8222b5acaa556/blte6b55f5dbea81dfb/67787bc5523bb9cc755b74f6/Lizol_-_MX_-_es-MX-3174222.png" alt="Lysol" style="width:200px;">

</div>

<p>Why would we use a data science approach to study sales strategies? Because analyzing and processing large volumes of data will make possible to identify consumer behavior patterns, anticipate trends, improve sales efficiency, and optimize marketing strategies.</p>


<h2 id="python-libraries">Python libraries and other methods used 🔍</h2>

• Pandas  <a target="_blank" href="https://raw.githubusercontent.com/devicons/devicon/2ae2a900d2f041da66e950e4d48052658d850630/icons/pandas/pandas-original.svg" style="display: inline-block;"><img src="https://raw.githubusercontent.com/devicons/devicon/2ae2a900d2f041da66e950e4d48052658d850630/icons/pandas/pandas-original.svg" alt="pandas" width="20" height="20" /></a>



• NumPy  <a target="_blank" href="https://numpy.org/doc/stable/_static/numpylogo.svg" style="display: inline-block;"><img src="https://numpy.org/doc/stable/_static/numpylogo.svg" alt="numpy" width="30" height="30" /></a>



• Scikit-learn  <a target="_blank" href="https://upload.wikimedia.org/wikipedia/commons/0/05/Scikit_learn_logo_small.svg" style="display: inline-block;"><img src="https://upload.wikimedia.org/wikipedia/commons/0/05/Scikit_learn_logo_small.svg" alt="scikit_learn" width="30" height="30" /></a>



• Statsmodels  <a target="_blank" href="https://www.statsmodels.org/stable/_static/statsmodels_logo.svg" style="display: inline-block;"><img src="https://www.statsmodels.org/v0.11.1/_images/statsmodels-logo-v2-no-text.svg" alt="statsmodels" width="20" height="20" /></a>



• Matplotlib  <a target="_blank" href="https://matplotlib.org/_static/logo2_compressed.svg" style="display: inline-block;"><img src="https://matplotlib.org/_static/logo2_compressed.svg" alt="matplotlib" width="28" height="28" /></a>



• Seaborn  <a target="_blank" href="https://seaborn.pydata.org/_images/logo-mark-lightbg.svg" style="display: inline-block;"><img src="https://seaborn.pydata.org/_images/logo-mark-lightbg.svg" alt="seaborn" width="24" height="24" /></a>



• SQL Server  <a target="_blank" href="https://www.svgrepo.com/show/303229/microsoft-sql-server-logo.svg" style="display: inline-block;"><img src="https://www.svgrepo.com/show/303229/microsoft-sql-server-logo.svg" alt="sql server" width="27" height="27" /></a>



• Power BI  <a target="_blank" href="https://raw.githubusercontent.com/microsoft/PowerBI-Icons/main/SVG/PowerBI-Logo.svg" style="display: inline-block;"><img src="https://www.vectorlogo.zone/logos/microsoft_powerbi/microsoft_powerbi-icon.svg" alt="powerbi" width="20" height="20" /></a>





<h2 id="data-collection-wrangling">Data collection and Wrangling 📁</h2>

<p>The data collected pertains to the sales and profits of various cleaning products sold by several companies in Mexico (including Reckitt). These data were provided by EBAC and consisted of five .csv files</p>:
<ul style="font-size: 0.9em;">
  <li><strong>• FACT_SALES :</strong> data related to product sales and profits.</li>
  <li><strong>• DIM_PRODUCT :</strong> general product information</strong></li>
  <li><strong>• DIM_SEGMENT :</strong> data on product format (liquid, powder, gel, etc.)</strong></li>
  <li><strong>• DIM_CATEGORY :</strong> general category of the product</strong></li>
  <li><strong>• DIM_CALENDAR :</strong> dates of the transactions</strong></li> 
</ul>
Pandas was used to clean up and transform each file. At the end of this section, a single consolidated dataframe was obtained with the sales and profit data for each product including their descriptions and sales dates, respectively. The methods used are presented in the following table:

<div align="center"><img src="https://github.com/victorve-l/Reckitt_EBAC/blob/main/Templates/Fig1.jpg?raw=true" width="500" height="500" /></div>

<ul><li><a target="_blank" href="https://github.com/victorve-l/Reckitt_EBAC/blob/main/01_Data%20Collection%20and%20Wrangling/Data%20collection%20and%20wrangling.ipynb"> Full code for this section</a></li> </ul>





<h2 id="exploratory-data-analysis">Exploratory Data Analysis (EDA)🔭</h2>

<p>In EDA, SQL Server was used to perform key queries and obtain general insights about the data. Some key findings were:</p>

<ul style="font-size: 0.9em;">
  <li><strong>•Sales per category:</strong> Safe bleach products are the products with the highest sales and profits.</li>
  <li><strong>•Sales per region:</strong> The areas TOTAL AUTOS SCANNING MEXICO (hereafter called region 0), area 2, and area 5 are the top 3 regions with the highest sales.</li>
  <li><strong>•Sales per time period:</strong> Year 2022 generated higher revenues than year 2023.</li>
</ul>

<div align="center"><img src="https://github.com/victorve-l/Reckitt_EBAC/blob/main/Templates/Fig2.jpg?raw=true" width="500" height="300" /></div>

<ul><li><a target="_blank" href="https://github.com/victorve-l/Reckitt_EBAC/blob/main/02_Exploratory%20Data%20Analysis%20(EDA)/Exploratory_Data_Analysis_SQL.sql"> Full code for this section</a></li> </ul>





<h2 id="data-visualization">Data Visualization 📊</h2>

<p>Data visualization related to reckit sales was performed using the matplotlib and seaborn libraries. According to the analysis, Vanish products (pre-washers and bleaches) have high and variable unit sales (products have been sold a higher number of times). In the case of Lysol, unit sales proved to be low but consistent (products have been sold a few times). </p>

<div align="center"><img src="https://github.com/victorve-l/Reckitt_EBAC/blob/main/Templates/Fig3.jpg?raw=true" width="350" height="400" /></div>

Sales by region showed a distribution skewed to the right, meaning that in all regions products are sold in small quantities. Region 0 had the greatest variety of unit sales, while regions 2, 3, and 6 had the lowest concentration of sales.

<div align="center"><img src="https://github.com/victorve-l/Reckitt_EBAC/blob/main/Templates/Fig6.jpg?raw=true" width="450" height="400" /></div>



<h2 id="segmentation-k-means">Segmentation with K-means Clustering 📚</h2>

<p>Explica tu proceso de segmentación usando K-means clustering, incluyendo los resultados y las interpretaciones.</p>

<p>...</p>






<h2 id="time-series-forecasting">Time Series Forecasting 📈</h2>

<p>Detalla tus modelos de pronóstico de series de tiempo, los resultados y las implicaciones.</p>

<p>...</p>





<h2 id="conclusions">Conclusions 📒</h2>



[Link to the presentation](https://github.com/victorve-l/Reckitt_EBAC/blob/main/Templates/Reckitt_DataScience_FinalPresentation.pdf)
