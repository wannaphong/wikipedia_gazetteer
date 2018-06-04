# Thai Wikipedia Gazetteer

Named entity gazetteer derived from the Thai Wikipedia.

fork by https://github.com/mpsilfve/wikipedia_gazetteer

```th_wikipedia_gazetteer.pkl``` from https://github.com/wannaphongcom/wikipedia_gazetteer/releases/tag/v1.0

# General Stuff

This code will build a gazetteer for Thai Named Entity Recognition from the Thai Wikipedia. A gazetteer maps terms into categories. For example, the gazetteer built by this code maps "Samsung" into the category "บริษัท" (Finnish for company) and "Nokia" into the categories "บริษัท". 

Categories are based on Wikipedia infoboxes. Some articles lack an infobox (e.g. the article for ThinkPad in the Thai Wikipedia). Terms corresponding to these articles do not currently receive any categories.

This project relies on an xml-dump of the Thai Wikipedia. You can get one e.g. from the [DBPedia project] (http://downloads.dbpedia.org/current/core-i18n/th/pages_articles_th.xml.bz2).

You can possibly also use the code to generate gazetteers for other languages but I have't tested this. 

# Building

Run

    make
    
This will build a Python3 pickled dictionary ```th_wikipedia_gazetteer.pkl```.

You can download ```th_wikipedia_gazetteer.pkl``` from https://github.com/wannaphongcom/wikipedia_gazetteer/releases/tag/v1.0

# Using
```
$ python3
>>> import pickle
>>> gazetteer = pickle.load(open('th_wikipedia_gazetteer.pkl','rb'))
>>> gazetteer['Nokia']
{'กล่องข้อมูล บริษัท'}
>>> gazetteer['Samsung']
{'Infobox company'}
>>> gazetteer['ประเทศไทย']
{'กล่องข้อมูล ประเทศ'}
>>> gazetteer['ประเทศลาว']
{'กล่องข้อมูล ประเทศ'}
>>> gazetteer['มหาวิทยาลัยขอนแก่น']
{'กล่องข้อมูล มหาวิทยาลัย'}
```

# Releases

Look in releases for the latest compiled version if you don't want to compile the gazetteer yourself.
