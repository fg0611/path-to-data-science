#!/usr/bin/env python
# coding: utf-8

# In[27]:


import matplotlib.pyplot as plt


# In[71]:


# line plot
plt.figure(figsize=(10,3))
# cty 1
x = [2016, 2017, 2018, 2019, 2020, 2021]
y = [45, 46, 48, 50, 52, 60]
# cty 2
x2 = [2016, 2017, 2018, 2019, 2020, 2021]
y2 = [41, 42, 44, 45, 52, 57]
plt.plot(x, y, marker='o', linestyle='-.', color='g', label='mongolia')
plt.plot(x2, y2, marker='d', linestyle='-', color='b', label='congo')
plt.xlabel('Year')
plt.ylabel('Population (M)')
plt.title('years vs population')
plt.legend(loc='upper center')
plt.yticks([45, 50, 55, 60])
plt.savefig('cty.png')
plt.show()


# In[76]:


#subplots
fig, ax = plt.subplots(1, 2, sharey=True) # rows and cols
ax[0].plot(x,y,color='r')
ax[1].plot(x2,y2,color='b')
plt.show()


# In[70]:


# Bar Plots
plt.figure(figsize=(8,3))
bar1 = ['asia', 'america', 'europe', 'oceania', 'africa']
bar2 = [30, 20, 20, 5, 25]
plt.bar(bar1, bar2)
plt.show()


# In[48]:


# pie
plt.pie(y, labels=x)
plt.show()


# In[57]:


# histogram
conts = ['asia', 'america', 'europe', 'oceania', 'africa']
pers = [30, 15, 25, 5, 25]
bins = [5,10,15,20,25,30,35]
plt.hist(pers,bins,edgecolor='black')
plt.show()


# In[69]:


# scatterplot
conts = ['asia', 'america', 'europe', 'oceania', 'africa']
scat1 = [30,15,25,5,25,50]
scat2 = [5,10,12,2,1,4]
plt.scatter(scat1,scat2)
plt.show()


# In[ ]:




