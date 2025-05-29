# Project Overview



In this project we will use supervised and unsupervised Machine Learning algorithms to analyze Reckitt sales data. Reckitt is a multinational company dedicated to the generation of health, hygiene and household cleaning products. Among its most prominent products are Vanish, Lysol, Harpic, Dettol, durex, among others.



The data to be analyzed come from the sales of Vanish and Lysol pre-wash, bleach, and sanitizer products, respectively. The objective of this project is to evaluate the sales performance of Vanish and Lysol products, identify key opportunities to grow the market and sales, and make sales forecasts for both brands.



**This project was part of EBAC's Data Scientist Certificate**

<div align="center"><img src="https://github.com/victorve-l/Reckitt_EBAC/blob/main/Templates/Logo.png?raw=true" width="500" height="600" /></div>



<h2 id="project-structure">Project Structure</h2>

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
<p><a href="#project-structure">Back to Project Structure</a></p>




<h2 id="exploratory-data-analysis">Exploratory Data Analysis (EDA)🔭</h2>

<p>In EDA, SQL Server was used to perform key queries and obtain general insights about the data. Some key findings were:</p>

<ul style="font-size: 0.9em;">
  <li><strong>•Sales per category:</strong> Safe bleach products are the products with the highest sales and profits.</li>
  <li><strong>•Sales per region:</strong> The areas TOTAL AUTOS SCANNING MEXICO (hereafter called region 0), area 2, and area 5 are the top 3 regions with the highest sales.</li>
  <li><strong>•Sales per time period:</strong> Year 2022 generated higher revenues than year 2023.</li>
</ul>

<div align="center"><img src="https://github.com/victorve-l/Reckitt_EBAC/blob/main/Templates/Fig2.jpg?raw=true" width="500" height="300" /></div>

<ul><li><a target="_blank" href="https://github.com/victorve-l/Reckitt_EBAC/blob/main/02_Exploratory%20Data%20Analysis%20(EDA)/Exploratory_Data_Analysis_SQL.sql"> Full code for this section</a></li> </ul>
<h2 id="introduction">Back to Project Structure</h2>




<h2 id="data-visualization">Data Visualization 📊</h2>

<p>Data visualization related to reckit sales was performed using the matplotlib and seaborn libraries. According to the analysis, Vanish products (pre-washers and bleaches) have high and variable unit sales (products have been sold a higher number of times). In the case of Lysol, unit sales proved to be low but consistent (products have been sold a few times). </p>

<div align="center"><img src="https://github.com/victorve-l/Reckitt_EBAC/blob/main/Templates/Fig3.jpg?raw=true" width="350" height="400" /></div>

<p> Sales by region showed a distribution skewed to the right, meaning that in all regions products are sold in small quantities. Region 0 had the greatest variety of unit sales, while regions 2, 3, and 6 had the lowest concentration of sales. </p>

<div align="center"><img src="https://github.com/victorve-l/Reckitt_EBAC/blob/main/Templates/Fig6.jpg" width="600" height="400" /></div>

<p>With respect to the earnings performance of Reckitt products, the Vanish brand showed an increase in earnings between 2022-23, while earnings for Lysol products remained stable over the same period. </p>

<div align="center"><img src="https://github.com/victorve-l/Reckitt_EBAC/blob/main/Templates/Fig4a.jpg" width="700" height="280" /></div>

<p> Finally, an interactive dashboard was created in PowerBI where the total sales and profits of the Vanish and Lysol products, respectively, can be visualized. It is also possible to visualize total profits by region and by product type.</p>
<div align="center"><img src="https://github.com/victorve-l/Reckitt_EBAC/blob/main/Templates/Fig5.jpg" width="700" height="220" /></div>

<ul><li><a target="_blank" href="https://github.com/victorve-l/Reckitt_EBAC/blob/main/03_Data%20Visualization/Data%20Visualization.ipynb"> Full code for this section</a></li> </ul>
<ul><li><a target="_blank" href="https://github.com/victorve-l/Reckitt_EBAC/blob/main/03_Data%20Visualization/Power_BI_Dashboard.pdf"> Dashboard Visualization</a></li> </ul>
<h2 id="introduction">Back to Project Structure</h2>



<h2 id="segmentation-k-means">Segmentation with K-means Clustering 📚</h2>

<p>The K-means clustering algorithm was used to segment the products based on key variables such as total sales, total profits, product type, etc. Data was transformed using the following tools from scikit learn:</p>
<ul style="font-size: 0.9em;">
  <li><strong>• Target Encoder:</strong> transformation of categorical variables into numerical variables</li>
  <li><strong>• Standard Scaler :</strong> data standarization</strong></li>
  <li><strong>• PCA :</strong> Dimension reduction</strong></li>
</ul>

<p>The elbow method was applied to determine the optimal number of clusters. According to the graph, the optimal number is k=5.</p>
<div align="center"><img src="https://github.com/victorve-l/Reckitt_EBAC/blob/main/Templates/Fig7.jpg" width="500" height="400" /></div>

<p>Five clusters were identified using data reduced to 3 dimension by PCA and a value ok k=5. The clusters appear to be related to the number of units sold and total profits.</p>
<div align="center"><img src="https://github.com/victorve-l/Reckitt_EBAC/blob/main/Templates/Fig8.jpg" width="600" height="500" /></div>
<p>According to the cluster assignment, clusters 1 and 4 belong to products whose profits are 'low' (less than 1500 units). Cluster 3 belongs to products with intermediate profits (approximately 27 000 units). Clusters 0 and 2 belong to products that generated high profits (greater than 70,000 units). It should be noted that sales en these last groups were variable compared to others.</p>
<div align="center"><img src="https://github.com/victorve-l/Reckitt_EBAC/blob/main/Templates/Fig9.jpg" width="600" height="450" /></div>
<a target="_blank" href="https://github.com/victorve-l/Reckitt_EBAC/blob/main/04_Segmentation%20with%20K-means%20Clustering/Segmentation%20with%20K-means%20Clustering.ipynb"> Full code for this section</a>
<h2 id="introduction">Back to Project Structure</h2>


<h2 id="time-series-forecasting">Time Series Forecasting 📈</h2>

<p>An ARIMA time series model was used to predict earnings, based on sales patterns observed in historical data. The variable TOTAL_VALUE_SALES was used, which represents the total value generated. A graph of historical Reckitt product earnings is shown below: </p>
<div align="center"><img src="https://github.com/victorve-l/Reckitt_EBAC/blob/main/Templates/Fig10.jpg" width="500" height="400" /></div>

<p>Before performing the forecasts with ARIMA, the calculation of differencing between observations (Δyt=yt-yt-1) was applied and the Dickey-Fuller test was applied to obtain the optimal p value (optimal p=3):</p>
<div align="center"><img src="https://github.com/victorve-l/Reckitt_EBAC/blob/main/Templates/Fig11.jpg" width="500" height="400" /></div>

<p>To determine the hyper parameters of the ARIMA model, the Akaike Information Criterion (AIC) was used to compare different statistical models and select the most appropriate model (more detail on code). The ARIMA (3,1,1) model had the best score according to the AIC, and this model was used to make point predictions using the test database (orange line in the graph) and confidence intervals of the predictions using the test database.</p>
<div align="center"><img src="https://github.com/victorve-l/Reckitt_EBAC/blob/main/Templates/Fig12.jpg" width="500" height="400" /></div>

<p>A calculation of the point forecasts and confidence intervals over the next 8 weeks was also made using the ARIMA (3,1,1) model (more detail on code). Finally, to evaluate the accuracy of the model, the mean square error (MSE) and the mean absolute percentage error (MAPE) were calculated:</p>
<ul style="font-size: 0.9em;">
  <li><strong>• RMSE:</strong> 3724.72</li>
  <li><strong>• MAPE:</strong> 7.98%</strong></li>
</ul>
<p>According to the ARIMA (3,1,1), a model with an RMSE of 3748 units and a MAPE of 8% was obtained, suggesting that this model is adequate to predict the future earnings of VANISH and LYSOL products.</p>
<a target="_blank" href="https://github.com/victorve-l/Reckitt_EBAC/blob/main/05_Time%20Series%20Forecasting/Time%20Series%20Forecasting.ipynb"> Full code for this section</a>

<h2 id="introduction">Back to Project Structure</h2>


<h2 id="conclusions">Conclusions 📒</h2>
<p>Segmentation by K-means showed that there are items that generate minimal gains (clusters 1 and 4) while there are items that generate high gains (clusters 0 and 2). These items come mainly from pre-wash and bleach products (Vanish). The ARIMA model provides a reasonably accurate prediction (MAPE of 8%) of the total value generated. However, this model also suggests a slightly decreasing trend in the future, so it is important to identify external factors that may influence the company's total earnings in these next periods. </p>



<p>This project demonstrated that there are certain products for which demand is high, although, unfortunately, most products have low demand and therefore low sales. The magnitude of sales and profits are similar in most of the regions, with the exception of region 0 and 2, which had a higher variability of product sales. The results of this project will serve to prioritize products that have minimal sales (including Lysol products), as well as improve the sales strategy for these products in the regions that generated minimal profits. Some questions that could help to improve the strategy are:</p>

<ul style="font-size: 0.9em;">
<li>● Why are some products sold infrequently?</li>
<li>● What is the frequency with which the different products offered by Reckitt are consumed
(mainly those with low sales)?</li>
<li>● Are the products with low sales meeting customer needs?</li>
<li>● Is the result of low sales because the customer is not interested in the product or because
our competitors offer something better?</li>
<li>● Which products sell more each season?</li>
</ul>

<p>It is recommended that priority be given to regions with low sales and minimal profits, which in this case were regions 2, 3 and 6. Sales could be improved by determining which products the population of each region considers suitable for consumption and which are not of interest to them.Products or items with minimal sales should be upgraded or replaced by products that are more attractive to the population. While Vanish brand prewashers and bleaches showed acceptable sales, Lysol brand sanitizers did not. This means that consumers are not interested in the product, so it would be appropriate to replace or upgrade it. Study the external factors in each region that could influence product sales in particular periods of
time. This is in order to prevent declines in total profits (as predicted by the ARIMA point forecasts).</p>

<a[Link to the presentation](https://github.com/victorve-l/Reckitt_EBAC/blob/main/Templates/Reckitt_DataScience_FinalPresentation.pdf)</a>
<a href="#introduction">Back to Project Structure</a>
