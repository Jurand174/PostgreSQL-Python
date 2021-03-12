import dash
import dash_core_components as dcc
import dash_html_components as html
from dash.dependencies import Input, Output, State
import psycopg2
import pandas as pd
import dash_table #importowanie bibliotek

external_stylesheets = ['https://codepen.io/chriddyp/pen/bWLwgP.css']
conn = psycopg2.connect(
    "dbname='oegwoqir' user='oegwoqir' host='rogue.db.elephantsql.com' password='vG46aUp-Qh72hbp_esV6VEVdBe3Oztym'")  #łączenie siez bazą





app = dash.Dash(__name__, external_stylesheets=external_stylesheets) # tworzenie aplikacji z biblioteki dash
app.layout = html.Div([ # tworzenie apki webowej
    html.Header(
        [html.H1(["Projekt na przedmiot bazy danych 1 ",html.Br() , "Baza danych graczy do postaci Warhammer"]), #header dla projektu
        html.H3("Autor Jan Drwal")]
    ),

    dcc.Dropdown( # dropdown dla wyboru rasy
        id='demo-dropdown',
        options=[
            {'label': 'Wybierz rasę', 'value': 'q'},
            {'label': 'Człowiek', 'value': 'czlowiek'},
            {'label': 'Krasnolud', 'value': 'krasnolud'},
            {'label': 'Elf Leśny', 'value': 'elf leśny'},
            {'label': 'Elf Wysoki', 'value': 'elf wysoki'},
            {'label': 'Niziołek', 'value': 'niziołek'},
            {'label': 'Nieumarły', 'value': 'nieumarły'},
        ],
        value='q'
    ),
    html.Div(
    [html.Button("Wskaż Rasę",id='sub', n_clicks=0), # przyscisk wyświetlajacy parametry i region dla danej rasy

    html.Div(className="dit",id="div1"),html.Div(className="dit",id="div2")],id="r"), # miejsce na parametry

    dcc.Dropdown( #dropdown dla wyboru profesji
        id='drop2',
        options=[
            {'label': 'Wybierz profesje', 'value': 'q'},
            {'label': 'akolita', 'value': 'akolita'},
            {'label': 'giermek', 'value': 'giermek'},
            {'label': 'grabarz', 'value': 'grabarz'},
            {'label': 'straznik pól', 'value': 'straznik pól'},
            {'label': 'wojownik klanowy', 'value': 'wojownik klanowy'},
            {'label': 'tarczownik', 'value': 'tarczownik'},
            {'label': 'straznik miejski', 'value': 'straznik miejski'},
            {'label': 'podżegacz', 'value': 'podżegacz'},
            {'label': 'najemnik', 'value': 'najemnik'},
            {'label': 'górnik', 'value': 'górnik'},
            {'label': 'żeglarz', 'value': 'żeglarz'},
            {'label': 'przemytnik', 'value': 'przemytnik'},
            {'label': 'bandyta', 'value': 'bandyta'},
        ],
        value='q'
    ),
    html.Div(
    [html.Button("Wskaż profesję",id='sub2', n_clicks=0), # przycisk wyboru profesji
    html.Div(className="dit",id="div21"),html.Div(className="dit",id="div22"),
    html.Div(className="dit",id="div23"),html.Div(className="dit",id="div24")],id="r2"), # miejsca na tabele

dcc.Dropdown( # dropdown dla klasy postaci
        id='drop3',
        options=[
            {'label': 'Wybierz klasę', 'value': 'q'},
            {'label': 'Wojownik', 'value': 'Wojownik'},
            {'label': 'Tank', 'value': 'Tank'},
            {'label': 'Zabójca', 'value': 'Zabójca'},
            {'label': 'Łotrzyk', 'value': 'Łotrzyk'},
            {'label': 'Łowca', 'value': 'Łowca'},
            {'label': 'Mag', 'value': 'Mag'},
            {'label': 'Szaman', 'value': 'Szaman'},
            {'label': 'Paladyn', 'value': 'Paladyn'},
            {'label': 'Złodziej', 'value': 'Złodziej'},
            {'label': 'Dyplomata', 'value': 'Dyplomata'},
        ],
        value='q'
    ),
    html.Div([
    html.Button("Wskaż klasę postaci",id='sub3', n_clicks=0), #przysk do otrzymania informacji o klasie postaci
    html.Div(className="dit",id="div31"),html.Div(className="dit",id="div32"),
    html.Div(className="dit",id="div33")],id="r3"), # miejsce na otrzymanie informacji (raportów)
    html.H2("Poniżej można wprowadzić postać. Parametry dotyczące rasy, klasy i profesji pobierane są z list powyżej"),
    dcc.Dropdown( # wybór regionu pochoidzenia
        id='drop4',
        options=[
            {'label': 'Wybierz Region', 'value': 'q'},
            {'label': 'Imperium', 'value': 'Imperium'},
            {'label': 'Kislev', 'value': 'Kislev'},
            {'label': 'Norska', 'value': 'Norska'},
            {'label': 'Estalia', 'value': 'Estalia'},
            {'label': 'Wschodnie góry', 'value': 'Wschodnie_góry'},
            {'label': 'Kraina Zgromadzenia', 'value': 'Kraina_Zgromadzenia'},
            {'label': 'Klan', 'value': 'Klan'},
            {'label': 'Ulthuan', 'value': 'Ulthuan'},
            {'label': 'Sylvania', 'value': 'Sylvania'},
            {'label': 'Bretonia', 'value': 'Bretonia'},
        ],
        value='q'
    ),

    html.Div([
    html.Button("Wprowadź nową postać",id='sub4', n_clicks=0), dcc.Input( # przycisk o wprowadzenia postaci
            id="imie",
            type="text",
            placeholder="imie postaci", #text field do imienia postacie
        ),
        dcc.Input(
            id="nazwisko",
            type="text",
            placeholder="nazwisko postaci",#text field do nazwiska postacie
        ),
        dcc.Input(
            id="wiek",
            type="number",
            placeholder="wiek postaci",#text field do wieku postacie
        ),
    html.Div(className="dit",id="div41"),html.Div(className="dit",id="div42")],id="r4") # zwrot wyniku


])


@app.callback( # funkcje callback pozwalające na wyswietlenie parametrów dla danej rasy postaci
        [Output('div1', 'children'),Output('div2', 'children')],
        [Input('sub','n_clicks')],
        State('demo-dropdown', 'value'))
def update_output(nc,value):
    if(value == 'q'):
        return [html.H4("Wybierz rasę i wciśnij przycisk by zobaczyć parametry")],[]
    else:
        conn = psycopg2.connect("dbname='oegwoqir' user='oegwoqir' host='rogue.db.elephantsql.com' password='vG46aUp-Qh72hbp_esV6VEVdBe3Oztym'")
        df = pd.read_sql_query("SELECT region FROM proj.region_pochodzenia, proj.rasa_postaci ,proj.przeszlosc where id_rasy = id_rasa AND id_poch=id_region AND nazwa_rasy = '{}' GROUP BY region;".format(value), conn)
        conn.commit()
        data=df.to_dict(orient='records')
        columns = [{'name': col, 'id': col} for col in df.columns]
        df2 = pd.read_sql_query("SELECT * FROM proj.statyp where nazwa_rasy = '{}';".format(value),conn)
        conn.close()
        data2 = df2.to_dict(orient='records')
        columns2 = [{'name': col, 'id': col} for col in df2.columns]


        return [dash_table.DataTable(id='tprze',data = data,columns=columns)],[dash_table.DataTable(id='tprze2',data = data2,columns=columns2)]


@app.callback(# funkcje callback pozwalające na wyswietlenie parametrów dla danej profesji postaci
       [Output('div21', 'children'),Output('div22', 'children'),Output('div23', 'children'),Output('div24', 'children')],
        [Input('sub2','n_clicks')],
        State('drop2', 'value'))

def update_output3(nc2,val2):
    if(val2=='q'):
        return [html.H4("Wybierz profesję i wciśnij przycisk by zobaczyć parametry")],[],[],[]
    else:
        conn = psycopg2.connect("dbname='oegwoqir' user='oegwoqir' host='rogue.db.elephantsql.com' password='vG46aUp-Qh72hbp_esV6VEVdBe3Oztym'")
        df = pd.read_sql_query("SELECT * FROM  proj.bron_profesja('{}');".format(val2), conn)
        conn.commit()
        data = df.to_dict(orient='records')
        columns = [{'name': col, 'id': col} for col in df.columns]

        df2 = pd.read_sql_query("SELECT * FROM  proj.panc_prof('{}');".format(val2), conn)
        conn.commit()
        data2 = df2.to_dict(orient='records')
        columns2 = [{'name': col, 'id': col} for col in df2.columns]

        df3 = pd.read_sql_query("SELECT * FROM  proj.bron_dyst_prof('{}');".format(val2), conn)
        conn.commit()
        data3 = df3.to_dict(orient='records')
        columns3 = [{'name': col, 'id': col} for col in df3.columns]

        df4 = pd.read_sql_query("SELECT * FROM  proj.ekw_prof('{}');".format(val2), conn)
        conn.commit()
        data4 = df4.to_dict(orient='records')
        columns4 = [{'name': col, 'id': col} for col in df4.columns]
        conn.close()
        return [dash_table.DataTable(id='prof1',data = data,columns=columns)],[dash_table.DataTable(id='prof2',data = data2,columns=columns2)],[dash_table.DataTable(id='prof3',data = data3,columns=columns3)],[dash_table.DataTable(id='prof4+',data = data4,columns=columns4)]


@app.callback(# funkcje callback pozwalające na wyswietlenie parametrów dla danej klasy postaci
       [Output('div31', 'children'),Output('div32', 'children')],
        [Input('sub3','n_clicks')],
        State('drop3', 'value'))

def update_outpu444(nc,value):
    if(value == 'q'):
        return [html.H4("Wybierz klasę i wciśnij przycisk by zobaczyć parametry")],[]
    else:
        conn = psycopg2.connect("dbname='oegwoqir' user='oegwoqir' host='rogue.db.elephantsql.com' password='vG46aUp-Qh72hbp_esV6VEVdBe3Oztym'")
        df = pd.read_sql_query("SELECT * FROM proj.statyk where nazwa_klasy = '{}';".format(value),conn)
        conn.commit()
        data=df.to_dict(orient='records')
        columns = [{'name': col, 'id': col} for col in df.columns]
        df2 = pd.read_sql_query("SELECT COUNT(*) from proj.mag_klasa, proj.klasa_postaci WHERE nazwa_klasy = '{}' AND klasa_postaci.id_klasa=mag_klasa.id_klasa;".format(value),conn)

        tr = df2['count'].tolist()[0]
        if(tr==0):
            conn.close()
            return [dash_table.DataTable(id='prof31',data = data,columns=columns)],[html.H4("Klasa nie potrafi używać magii")]
        else:
            df2 =pd.read_sql_query("SELECT nazwa_kregu from proj.mag_klasa,proj.klasa_postaci,proj.rodzaje_magii WHERE nazwa_klasy = '{}' AND klasa_postaci.id_klasa=mag_klasa.id_klasa AND rodzaje_magii.id_magia = mag_klasa.id_magia;".format(value),conn)
            conn.commit()
            data2 = df2.to_dict(orient='records')
            columns2 = [{'name': col, 'id': col} for col in df2.columns]
            return [dash_table.DataTable(id='prof31', data=data, columns=columns)], [dash_table.DataTable(id='prof32', data=data2, columns=columns2)]

@app.callback( # funkcja wprowadzająca nową postać i pokazującą aktualną listę postaci
        [Output('div41', 'children'),Output('div42', 'children')],
        [Input('sub4','n_clicks')],
        [State('demo-dropdown', 'value'),
         State('drop2', 'value'),
         State('drop3', 'value'),
         State('drop4', 'value'),
         State('imie', 'value'),
         State('nazwisko', 'value'),
         State('wiek', 'value')])
def update_output33333(nc,ras,prof,kl,reg,im,naz,wi):
    if (ras == "q" or reg == "q" or prof == "q" or kl == "q"):
        return html.H2("Wybierz dane do list powyzej"), []
    conn = psycopg2.connect("dbname='oegwoqir' user='oegwoqir' host='rogue.db.elephantsql.com' password='vG46aUp-Qh72hbp_esV6VEVdBe3Oztym'")
    df = pd.read_sql_query("SELECT odpornosc_na_magie as odp from proj.rasa_postaci where nazwa_rasy = '{}';".format(ras), conn)
    df2 = pd.read_sql_query("SELECT COUNT(*) from proj.mag_klasa, proj.klasa_postaci WHERE nazwa_klasy = '{}' AND klasa_postaci.id_klasa=mag_klasa.id_klasa;".format(kl), conn)
    df3 = pd.read_sql_query("Select Count(*) from proj.rasa_postaci,proj.region_pochodzenia,proj.przeszlosc WHERE nazwa_rasy ='{}' AND region = '{}' AND id_rasa=Id_rasy AND id_poch = id_region;".format(ras,reg),conn)
    tr = df2['count'].tolist()[0]
    bl=df['odp'].tolist()[0]
    tr2=df3['count'].tolist()[0]

    if(im==None or naz==None):
        conn.close()
        return html.H2("Wprowaedź imie i nazwisko"), []
    elif(tr2==0):
        conn.close()
        return html.H2("Postać nie może pochodzić z tego regionu"),[]

    elif(bl==True and tr > 0):
        conn.close()
        return html.H2("Dana rasa nie może używać magii więc dana klasa jest dla niej nie dostępna"),[]

    else:
        cur=conn.cursor()
        cur.execute("SELECT proj.inser('{}','{}','{}','{}','{}','{}','{}');".format(im,naz,wi,kl,prof,ras,reg))
        conn.commit()
        df = pd.read_sql_query("Select imie,nazwisko,wiek,nazwa_klasy,profesje.nazwa, nazwa_rasy,region from proj.postacie_graczy,proj.klasa_postaci,proj.region_pochodzenia, proj.rasa_postaci, proj.profesje where id_rasa=id_rasy AND postacie_graczy.id_klasa = klasa_postaci.id_klasa AND id_prof=id_profesji AND id_region = id_poch;",conn)
        data = df.to_dict(orient='records')
        columns = [{'name': col, 'id': col} for col in df.columns]

        conn.close()
        return html.H2("Wprowadzono nowego gracza"),[dash_table.DataTable(id='prof31', data=data, columns=columns)]








if __name__ == '__main__':
    conn.close()
    app.run_server(debug=True)
    conn.close()