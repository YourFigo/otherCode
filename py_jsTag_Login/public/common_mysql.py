import pymysql
import mysql.connector

config = {
    'host': '127.0.0.1',
    'user': 'root',
    'password': '123456',
    'port': 3306,
    'database': '360security',
    'charset': 'utf8'
}

def crePltfmTb():
    try:
        conn = mysql.connector.connect(**config)
        cursor = conn.cursor()

        crtTbSql = 'create table if not exists platformAccount (name varchar(20) primary key,username varchar(30),password varchar(20))'
        cursor.execute(crtTbSql)

        insertSql = 'replace into platformAccount (name,username,password) values (%s, %s,%s)'
        cursor.execute(insertSql, ('Adview', 'apiad@mobimagic.com', 'mobi666'))
        cursor.execute(insertSql, ('AOL', 'apiad@mobimagic.com', 'Flyboost666666*'))
        cursor.execute(insertSql, ('cm', 'liuyunyun@mobimagic.com', '360Security123'))
        cursor.execute(insertSql, ('Mobfox', 'apiad@mobimagic.com', '360Security2017'))
        cursor.execute(insertSql, ('Mopub', 'apiad@mobimagic.com', '360Security@2018'))
        cursor.execute(insertSql, ('NewCM', 'liuyunyun@mobimagic.com', '360Security'))
        cursor.execute(insertSql, ('OpenX', 'liuyunyun@mobimagic.com', '360Security123'))
        cursor.execute(insertSql, ('Pubnative', 'jstagad@mobimagic.com', '360Security2017666'))
        cursor.execute(insertSql, ('Smaato', 'bonowu@360overseas.com', '360overseas!@#$'))
        cursor.execute(insertSql, ('Solo', 'liqiu@mobimagic.com', '360Security123'))
        cursor.execute(insertSql, ('Tappx', 'apiad@mobimagic.com', 'tappx123'))

        print("mysql表格创建完成---------")
        conn.commit()
    except mysql.connector.Error as e:
        print('connect fails!{}'.format(e))
    finally:
        cursor.close()
        conn.close()

def selectFromTb(item):
    try:
        conn = mysql.connector.connect(**config)
        cursor = conn.cursor()
        selectOneSql = 'select * from platformAccount where name = %s'
        selectAllSql = 'select * from platformAccount'
        cursor.execute(selectOneSql,(item,))
        values = cursor.fetchall()
        # print(values[0][1],values[0][2])
        return values[0][1], values[0][2]
    except mysql.connector.Error as e:
        print('connect fails!{}'.format(e))
    finally:
        cursor.close()
        conn.close()

if __name__ == '__main__':
    crePltfmTb()
    username,password = selectFromTb('OpenX')
    print(username)
    print(password)