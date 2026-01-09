import 'package:flutter/material.dart';

class HymnBookPage extends StatefulWidget {
  const HymnBookPage({super.key});

  @override
  State<HymnBookPage> createState() => _HymnBookPageState();
}

class _HymnBookPageState extends State<HymnBookPage> {
  final TextEditingController _searchController = TextEditingController();
  List<Map<String, String>> hymns = [
{'number':'1','title':'Ishe, Taungana', 'lyrics': 'Ishe taungana, \nMuno mumba yenyu;\nUyaiwo, zvatapinda\nIshe mberi kwenyu.\n\nIyo mwoyo yedu\nYokurwarirai;\nNayo mweya yedu Ishe\nYokutarirai.\n\nHurukuro dzenyu\nBaba, ngatidzinzwe;\nRazarurwa dama renyu\nNemi tikunzwei.\n\nTinatswewo, Ishe,\nIsu vanhu venyu;\nKana tafa, tipinzewo\nMune denga renyu.'},
{'number':'2','title':'Mwari, MuriZuva Redu', 'lyrics': 'MWARI muri zuva redu,\nRinopenya pauzuru;\nAsi mweya ungaone\nPaunozofamba napo.\n\n2. Mwari, muri nhovo yedu,\nHatidzityi hondo dzedu;\nDzose dzinokundwa nemi,\nTigouya nokufara.\n\n3. Munotipa ngoni dzenyu,\nMunotipa noutswene;\nMunopa vanonamata,\nMunopa makomborero.\n\n4. Makomborero makuru,\nMakomborero ewedenga,\nAripo avanofunga\nKuti vanodiswa nemi.'},
{'number':'3','title':'Mweya, Mutsvene.', 'lyrics': 'Mweya mutsvene waMwari\nGarai muno mumba\nBurukai zvino nesimba\nUya Mweya, uyai\n\nUyai Mweya, kufanana\nKupenya kwezuva\nVenekerai mwoyo yedu\nOnisai kuipa\n\nOnisai rushavashava\nNezvirwere zvose\nTitungamire panzira\nPanenda vatsvene\n\nUyai serimi romoto \nPisai mwoyo yedu\nTichive zviteuriro\nKuna Ishe wedu\n\nUya Mweya kufanana\nDova rokudenga\nMwoyo isingabereke\nIve namapudzi\n\nUya senjiva yedenga\nMutivhumbamire\nNamapapiro orudo\nNoruregerero\n\nUyai sedutu remhepo\nNesimba renyasha\nKuti vanhu vakuonei\nNoutsvene hwenyu\n\nUyai Mweya wokudenga\nMukugara kwedu\nMutiite musha wenyu\nUyai Mweya, uyai'},
{'number':'4','title':'Mutsvene, Mutsvene.', 'lyrics': 'MUTSVENE, Mutsvene, Mwari wesimba!\nMangwana mangwana toimba kwauri;\nMutsvene, Mutsvene, wetsitsi namasimba!\nMwari wengoni, Mwari Mutsvene!\n\nMutsvene, Mutsvene! Vanokurumbidza\nVanhu vako vose kunewe kudenga;\nNengirozi dzose pachigaro chako\nDzinopfugama mberi kwauri.\n\nMutsvene, Mutsvene! vanhu verima,\nVanhu vakaipa havakuone;\nUri oga M’tsvene hapasisina mumwe,\nUna masimba nezvirokwazvo.\n\nMutsvene, Mutsvene! Mwari wesimba!\nAnokurumbidza mabasa ako ose.\nMutsvene, Mutsvene, wetsitsi nemasimba!\nMwari wengoni, Mwari Mutsvene!'},
{'number':'5','title':'Kudzai Mambo', 'lyrics': 'KUDZAI Mambo, ano utsvene;\nAri kudenga ana masimba;\nNdiye nhowo yedu yakarekare;\nChigaro chake chakakurumbidzwa.\n\nImbai masimba nengoni dzake,\nAri kudenga nenguwo chena;\nHasha dzake dzose dzinotinhira,\nAnofamba zvake pachamupupuri.\n\nAna masimba, wakaisika\nNyika nezvinhu zvose zvirimo,\nWakaitsigira nomurairo,\nWakaikombera nemvura yose.\n\nKufudza kwako kusingarehwe;\nKuri pamhepo napakupenya,\nKuri pamakomo napamakan’a,\nKuri pane mvura napane dova.\n\nIsu vaduku hatina simba,\nTinotarira chete kwauri;\nTsitsi dzako dzese dzisingaperi,\nHama yakanaka nomununuri.\n\nUna masimba norudo rwose:\nDzinokuimbira hondo dzose kudenga\nNesuwo venyika tinokuimbira,\nTino kurumbidza kusingaperi.\nPost navigation'},
{'number':'6','title':'Imi mose muri pasi', 'lyrics': 'IMI mose muri pasi,\nImbai kuna Jehovha:\nKurumbidzai mumutende;\nUyai norufaro kwaari.\n\nTinoziva kuti J’ovha\nNdiye Mwari wechokwadi;\nTiri bara rehwai dzake\nAnotipa kudya kwedu.\n\nPindai suwo guru rake;\nMuswedere kuna Mambo;\nTsimutsai mazvi enyu,\nMakafanira kudaro.\n\nNdiye Mwari wakanaka,\nTsitsi dzake dzakakomba;\nRudo nechokwadi chake\nHachingatipinde isu.'},
{'number':'7','title':'Hosana wokudenga', 'lyrics': 'HOSANA wokudenga,\nNdoimba nezwi rangu,\nKuMwana waDavid,\nWauya Kwandiri,\nHosana, ndiyamure\nPakurema kwangu:\nWauya asadanwa\nMuponisi wangu.\n\nNdoshonge dzakadini\nAzondishanyira?\nMugadziriri iwe\nMoyo wako wose,\nNdoupira kwauri\nMununuri wangu,\nUpfugame namabvi\nChokwadi ‘she wangu.\n\nNdasunungurwa newe\nMudhorongo rangu:\nRakadimurwa newe\nIro joti rangu\nRakandirasikisa\nNdasiya upenyu\nWakandifarisazve\nPakuchema kwangu.'},
{'number':'8','title':'Ngatimutukudze Mwari', 'lyrics': 'NGATIMUKUDZE Mwari\nNemwoyo inofara,\nTsitsi dzake ihuru\nDzinoitirwa isu\n\nAnorayira zuva\nRivhenekere nyika:\nTsitsi dzake ihuru\nDzinoitirwa isu.\n\nZvinhu zvose zvipenyu\nZvinoponiswa naye:\nTsitsi dzake ihuru\nDzinoitirwa isu.\n\nAnotikwanisawo,\nAnoda kukumbirwa:\nTsitsi dzake ihuru\nDzinoitirwa isu.\n\nKana tiri panhamu\nTinochengetwa isu:\nTsitsi dzake ihuru\nDzinoitirwa isu.\n\nMwana wake wakafa\nKuti tipinde denga:\nTsitsi dzake ihuru\nDzinoitirwa isu.\n\nNgatimukudze Mwari\nNemoyo inofara;\nTsitsi dzake dziripo\nDzisingaperi idzo'},
{'number':'9','title':'Mukudzei iye Mwari', 'lyrics': 'MUKUDZEI iye Mwari\nNavari kudenga;\nMukudzei iye Mwari,\nNavari kudenga.\n\nImi muri nhume dzake,\nMukudzeyi iye;\nNemi muri hondo dzake,\nMukudzeyi iye.\n\nIwe zuva, newe mwedzi,\nMukudzei iye;\nNemiwo imi nyenyedzi\nMukudzei iye.\n\nIwe moto newe chando,\nMukudzei iye;\nIwe chando, newe bute,\nMukudzei iye.\n\nNemhepo inovhuvhuta,\nChimukudza iye;\nNewe ita izwi rake,\nPaunozonzwika.\n\nImi vuri vashe mese,\nMukudzei iye;\nNemi imi vanhu mese,\nMukudzei iye.\n\nImi vese vakomana,\nMukudzei iye;\nNemi imi vasikana,\nMukudzei iye.\n\nNemi vanhu vachembera,\nMukudzei iye;\nNemi imi mhuri yose,\nMukudzei iye.'},
{'number':'10','title':'Ndinoshamiswa Kwazvo', 'lyrics': 'NDINOSHAMISWA kwazvo\nNamabasa makuru\nAkaitiwa newe\nOse anorumbidza;\nUkuru hwenyu Mwari\nHunoshamisa kwazvo.\n\nKana ndarangarira\nMabasa okudenga;\nKana ndarangarira\nMabasa apanyika;\nInobuda misodzi\nKana ndafunga iwe.\n\nMwari vatatu mumwe\nItai kuti tikude,\nNokuti wakatida,\nWakazotipa Jesu,\nWatipa mweya wako,\nWokutipupurira.\n\nRumbidza iwe denga!\nRumbidza iwe nyika!\nRumbidza iwe gungwa!\nNesu ngatirumbidze!\nUyu musiki wedu,\nAne rudo rukuru.'},
{'number':'11','title':'Zadzisa Chirevo Chako.', 'lyrics': 'Zadzisai chirevo chenyu\nMwari, Ishe wechokwadi;\nOse marudzi enyika\nNgaawane ruponiso.\n\nNamabvi kuneyi nyika\nNgaafugame panemi,\nDzidzamare dzose ndimi\nDzireve ukuru hwenyu.\n\nTongai, Jesu, tongai!\nRwouya nemi rufaro;\nNezvikanganiso zvedu\nYatadzika yose nyika.\n\nTarirai nyika yedu,\nRegererai zvitadzo;\nIshe musatitsamwire\nIsingafe mhuri yayo.\n\nRambai She, tisazvidze\nZvidzidziso zvezwi renyu;\nMutimutsirire Baba\nTigonzwa chokwadi chenyu.'},
{'number':'12','title':'Baba une simba', 'lyrics': 'BABA une simba rose,\nNdiyamure iwe;\nKana wandisiya Iwe\nIni ndoendepiko?\n\nkorus\nNdinotenda, ndinotenda, Jesu wandifira,\nNdichaponeswa neropa rake rakakomba.\n\nWakamutuma Munyai,\nKureva kwatiri;\nWakatipa Muponisi\nKutifira isu.\n\nJesu wakashongedzwa,\nUne ngoni huru;\nNokuti wakaroverwa\nPam’chinjikwa uyu\n\nNdinodzokera kwauri,\nUne tsitsi iwe;\nZvino ndigam’chire ini\nUsipo ndingafe'},
{'number':'13','title':'Uyai, vakristu', 'lyrics': 'UYAI , VaKristu,\nNokufara nokukunda;\nUyai, uyai KuBheterehema;\nUyai muone\nIshe wengirosi;\nUyai ngatimutende Kristu Ishe.\n\nMwari wa Mwari\nKuchena kokuchena;\nWazvarwa mukomana waMaria;\nMwari chokwadi:\nMwari pakutanga;\nUyai, ngatimutende, Kristu Ishe\n\nOmbai, ngirosi,\nOmbai nokufara,\nOmbai, vanhu vose kudenga,\nTendai kuna Mwari,\nMwari wokudenga:\nUyai, ngatimutende, Kristu Ishe.\n\nTinomukwazisa,\nWazvarwa iri zuva;\nNgakupiwe Kristu kutenda;\nIzwi raBaba,\nZvino wakauya;\nUyai, ngatimutende, Kristu Ishe.'},
{'number':'14','title':'Farai Vatendi', 'lyrics': 'FARAI vatendi mangwanana ano,\nMuponisi wevanhu wazvarwa;\nChikudzai rudo rwakakomba:\nShoko radzakauya naro\nKuti Mwari waponwa nenyama.\n\nVafudzi vakambotaurirwa,\nVakanzwa izwi rengirozi huru,\nNdina mashoko akakomba\nKuna vanhu vose pane nyika;\nDama raMwari rakazadzika,\nJesu waponwa ndiye M’ponisi.\n\nIkadaro Ngirozi, pakarepo\nDzakaimbirana rwiyo rutsva;\nDzakakudza rudo rwaMwari,\nDenga rakatinhira nokuimba.\nTsitsi dzasvika pano panyika.\n\nVafudzi vakambomhanya kwazvo,\nKundoona zvavakaitirwa;\nVakadzokera kuhwai dzavo,\nVachiri kukurumbidza Mwari,\nVakaparidza zvavakaona,\nVanyai vokutanga vaMwari.\n\nNgatirangarire tichifunga\nUrwo rudo rukuru rwaMwari;\nTitarise Mwana Mutsvene,\nAchienda kuno muchinjikwa;\nNengoni dzake timutevere\nTidarike tisvike kudenga.\n\nKuti tisangane nengirose\nTaponiswa tichifara kwazvo;\nNdiye waponwa nezuro kwazvo;\nAnozotionesa upenyu;\nTakaponiswa norudo rwake\nTinokudza Mambo wokudenga.'},
{'number':'15','title':'Watakura kuipa Jesu' , 'lyrics':'WATAKURA kuipa Jesu,\nkusi kuipa kwako;\nUkaripa mhosva Jesu,\nIsi mhoswa yako.\n\nWaiva munhu unetsitsi\nUsatadza Iwe;\nRaparara ropa rako,\nWakanaka iwe.\n\nKudarika kwedu kwose,\nKwakanyorwa newe;\nNezvirandu zvedu zvose,\nZvakanyorwa newe.\n\nTaregerwa taponiswa,\nNezvirwadzo zvako,\nTinoshambwa pakaipa\nNero ropa rako.'},
{'number':'16','title':'Tsitsi Hedzi', 'lyrics':'TSITSI hedzi dzamira dzega,/nNezvirwadzo zvakamira zvoga,\nNengoni dzakamira dzoga,\nPamuchinjikwa.\n\nIshe waburuka kudenga,\nAkazova munhu kuvanhu,\nAkava diramhamba redu,\nPamuchinjikwa.\n\nRutendo rwedu rwomirepi?\nKufunga kwedu kwomirepi?\nNorudo rwedu rwomirepi\nPamuchinjikwa.\n\nTsaona ingaperi yose,\nNemhaka dzose dzingaripwe;\nZvakaipa zvinoregerwa;\nPamuchinjikwa.\n\nDzakaona ngirozi pasi,\nDzakati gwanamwana pasi,\nDzichiona mashure ayo!\nPamuchinjikwa.'},
{'number':'17','title':'Changamire, Muponesi', 'lyrics':'Changamire, Muponisi\nIshe wakambozvidzwa;\nNezvirwadzo zvako, tenzi,\nKwakwaniswa kupona.\nChangamire, Mambo Jesu!\nMutakuri wemhosva;\nNako kufa kwakakomba\nTakapiwa upenyu.\n\nGwayana raMwari baba\nTonamata kwauri;\nRopa rakaparadzirwa\nIsu vakarasika.\nVanhu vako vose, Ishe\nVakatengerwa nzwimbo;\nVakazarurirwa musuw\nWebako rokudenga.\n\nChangamire! Wakagadzwa\nPachigaro chitswene,\nHondo dzose dzokudenga\nDzinokukurumbidza.\nUnoteurira isu,\nUnotireverera;\nPamusha wako mutswene\nUnoda kutipinza.\n\nWafanira kugam’chira\nKukudzwa noutsvene;\nKukurumbidzwa kukuru,\nRudo rusingaperi.\nTiyamurei ngirozi,\nUyai nenziyo dzenyu;\nTose tiimbire Mambo\nTine mwoyo michena'},
{'number':'18','title':'Riripo Tsime', 'lyrics':'RIRIPO tsime rizere\nNeropa raJesu;\nVatadzi vakashamba ‘mo,\nVakachena kwazvo.\n\nKorus\nNdinotenda, ndinofara,\nJesu wandifira;\nNapamuchinjikwa ropa\nRandaparadzirwa.\n\nUyo m’pati wakafara\nKuona tsime ‘ro;\nNeni mutadzi mukuru\nNdinotenda kwazvo.\n\nIwe, Gwayana raMwari,\nRopa rine masimba,\nKutisunungura isu\nPane zvakaipa.\n\nHandifanire kupinda\nKudenga kutsvene;\nAsi Iwe wakaripa\nMhosva dzangu dzose.\n\nNdichaimba nero shoko\nNguva dzangu dzose;\nNokudenga ndichafara\nNokusingaperi.'},
{'number':'19','title':'Chitenderano Jerusalema ndinokuona', 'lyrics':'Hooo heraa \n huya tiende hutende here\n hoiyere huya tiende'},
{'number':'20','title':'Ishe Ndinzwe Nokufara', 'lyrics':'Ishe ndinzwe nokufara\nNdinzwe netsitsi dzako\nDzaunopa vanhu vose\nNgadziuye pandiri, pandiri\n\nRega kundisiya, Baba,\nKana ndiri mutadzi,\nNdinokuipa pamoyo,\nAsi uya pandiri, pandiri.\n\nUya pano, Muponisi!\nNgandichengetwe newe;\nKana uchindishevedza,\nNdichauya kwauri, kwauri\n\nMweya Mutsvene wa Mwari!\nRega Kundipfuura,\nNgandione ndiri bofu,\nTaura izwi resimba, resimba.\n\nRudo rwako Mwari Baba,\nRopa raIshe wangu,\nNokuwadzana KwoMweya.\nKungavepo kwandiri, kwandiri.'},
{'number':'21','title':'Baba Ndiri Mwana Wako', 'lyrics':'BABA ndiri mwana wako,\nKana ndakatadza;\nNdinochema mberi kwako,\nBaba ndiregerere.\n\nZvitadzo zvangu zvizhinji,\nHazvingaverengwi;\nNdinozviisa kwauri;\nBaba ndiregerere.\n\nMirau yako ndakatyora,\nIwe ndakuzvidza;\nMununuri ndamurasa,\nBaba ndiregerere.\n\nNdakatadza nokureva,\nNdakatadza kufunga,\nNdakatadza namabasa;\nBaba ndiregerere.\n\nKana ndanga ndafanira\nNokukurumbidza,\nNdatadza nokukanganwa,\nBaba ndiregerere.\n\nNezvakaipa zvizhinji\nBaba ndakatadza,\nNdakakunyadzisa iwe,\nBaba ndiregerere.\n\nUri Mwari une ngoni,\nDzisina kupera,\nNaizvozvo ndinochema,\nBaba ndiregerere.'},
{'number':'22','title':'Nditarire nokufara', 'lyrics':'Nditarire nokufara,\nIshe wangu!\nNdiwe wanga wandifira,\nIshe wangu!\nWaburuka denga rako,\nUchisiya upenyu hwako,\nNdanzwa ruponiso rwako,\nIshe wangu!\n\nNdangandigere pane rima,\nIshe wangu!\nNdandiende pane rufu,\nIshe wangu!\nDzakauya nhume dzako.\nDzandinzwisa dama rako,\nDzandiudza tsitsi dzako,\nIshe wangu!\n\nNgandidzinzwe ngoni dzako,\nIshe wangu!\nNdive muponiswa wako,\nIshe wangu!\nZvakaipa ngazvipere,\nMwoyo uve noutsvene,\nNdinzwe undireverere,\nIshe wangu!'}, {'number':'23','title':'KRISTU Wamuka nhasi! Wamuka kwazvo', 'lyrics':''},


  ];

  List<Map<String, String>> filteredHymns = [];

  @override
  void initState() {
    super.initState();
    filteredHymns = hymns;
  }

  void _filterHymns(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredHymns = hymns;
      } else {
        filteredHymns = hymns.where((hymn) {
          return hymn['number']!.contains(query) ||
              hymn['title']!.toLowerCase().contains(query.toLowerCase()) ||
              hymn['lyrics']!.toLowerCase().contains(query.toLowerCase());
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hymn Book'),
        backgroundColor: const Color(0xFF034C36),
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFBDCDCF),
              Color(0xFF034C36),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Search Bar
              Container(
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  controller: _searchController,
                  onChanged: _filterHymns,
                  decoration: const InputDecoration(
                    hintText: 'Search hymns by number, title, or lyrics...',
                    prefixIcon: Icon(Icons.search, color: Color(0xFF034C36)),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  ),
                ),
              ),

              // Hymns List
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: filteredHymns.length,
                  itemBuilder: (context, index) {
                    final hymn = filteredHymns[index];
                    return Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xFF034C36),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              hymn['number']!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        title: Text(
                          hymn['title']!,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF034C36),
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF034C36),
                        ),
                        onTap: () {
                          _navigateToHymnDetail(context, hymn);
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToHymnDetail(BuildContext context, Map<String, String> hymn) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HymnDetailPage(hymn: hymn),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}

class HymnDetailPage extends StatelessWidget {
  final Map<String, String> hymn;

  const HymnDetailPage({super.key, required this.hymn});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hymn ${hymn['number']}'),
        backgroundColor: const Color(0xFF034C36),
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFBDCDCF),
              Color(0xFF034C36),
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Hymn Number and Title
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.95),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color(0xFF034C36),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            hymn['number']!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        hymn['title']!,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF034C36),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Hymn Lyrics
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.95),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    hymn['lyrics']!,
                    style: const TextStyle(
                      fontSize: 18,
                      height: 1.6,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}