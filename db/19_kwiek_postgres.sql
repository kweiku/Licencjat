-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 31, 2022 at 03:18 PM
-- Server version: 5.7.39-0ubuntu0.18.04.2
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: 19_kwiek
--

-- --------------------------------------------------------

--
-- Table structure for table categories
--

CREATE TABLE categories
(
    category_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

--
-- Dumping data for table categories
--

INSERT INTO categories (category_id, name)
VALUES (1, 'Proteiny'),
       (2, 'Emolienty'),
       (3, 'Humektanty');

-- --------------------------------------------------------

--
-- Table structure for table ingredients
--

CREATE TABLE ingredients
(
    ingredient_id SERIAL PRIMARY KEY,
    category_id   INTEGER REFERENCES categories,
    name          TEXT NOT NULL,
    description   TEXT,
    img_url       text
);

--
-- Dumping data for table ingredients
--

INSERT INTO ingredients
    (ingredient_id, category_id, name, description, img_url)
VALUES (1, 1, 'Hydrolyzed Keratin',
        'Keratyna hydrolizowana charakteryzuje się wysokim stopniem zawartości aminokwasów siarkowych, głównie cysteiny i metioniny, dzięki czemu doskonale wbudowuje się w strukturę zniszczonych włosów i paznokci. Włos ludzki składa się w głównej mierze z keratynowych łańcuchów – ich ubytki i przerzedzenia, wynikające przede wszystkim z uszkodzeń mechanicznych i chemicznych, powodują znaczne luki w zewnętrznej powłoce włosa. Keratyna hydrolizowana z racji najlepszego powinowactwa z naskórkiem ludzkim wypełnia owe uszkodzenia. Cząsteczki keratyny tymczasowo wypełniają ubytki w strukturze włosów, dzięki czemu włosy stają się mocniejsze i zregenerowane. Ich zła kondycja, suchość i łamliwość może świadczyć o niedoborze keratyny. Keratyna zapobiega także elektryzowaniu włosów. ',
        NULL),
       (2, 1, 'Hydrolyzed Silk',
        'Białka jedwabiu (fibroiny - bardzo podobne do białek budujących nasze włosy i paznokcie) w formie wodnego roztworu, mając małą masę cząsteczkową, wnikają bez problemu w głąb skóry i włosów.\r\nBiałka jedwabiu przenikając w głąb włosa, odżywiają go i nawilżają. Świetnie współgrają z odżywkami keratynowymi. Na powierzchni włosa tworzą delikatny film chroniący włosy przed promieniami UV i innymi czynnikami zewnętrznymi. Poprzez nawilżanie włosów, poprawiają ich podatność na układanie, zapobiegają elektryzowaniu, nadają im jedwabisty połysk, są szczególnie polecane do pielęgnacji włosów słabych, zniszczonych zabiegami fryzjerskimi.\r\n',
        NULL),
       (3, 1, 'Hydrolyzed Wheat Protein',
        'Substancja otrzymywana w wyniku hydrolizy kwasowej, alkalicznej lub enzymatycznej kiełków pszenicy. Stosowana w regenerujących kosmetykach do włosów. Zastosowana w szamponach łagodzi działanie mocnych detergentów. Działa też powlekająco i pozwala zatrzymać wilgoć we włosie. Nadaje włosom objętości. Wytwarza hydrofilowy film na skórze i włosach, który zabezpiecza przed utratą wody. Wykazuje działanie pośrednio nawilżające, ze względu na rozmiar cząsteczek nie penetruje w głąb skóry. Jest substancją antystatyczną, która zmniejsza elektryzowanie się włosów. Działa kondycjonująco na skórę i włosy. Jest to substancja bezpieczna, nie wykazuje działania alergicznego.',
        NULL),
       (4, 1, 'Hydrolyzed Milk Protein',
        'Substancja higroskopijna/składnik wiążący wodę, powierzchniowo nawilżający i wzmacniający skórę, włosy i paznokcie. Tworzy na powierzchni skóry film, który zapobiega utracie wody, nawilża, zmiękcza i wygładza skórę. Wypełnia uszkodzenia włosów, zapobiega elektryzowaniu, przyspiesza regenerację skóry, napina, wygładza i działa ochronnie. W kosmetykach myjących gasi pianę oraz łagodzi potencjalne działanie drażniące anionowych substancji powierzchniowo czynnych. Proteiny mleczne są jednymi z bardziej efektywnych i interesujących substancji służących poprawie kondycji włosów – mają zdolność wypełniania ubytków w strukturze włosa i dzięki temu chronią go przed dalszym zniszczeniem.',
        NULL),
       (5, 1, 'Hydrolyzed Oat Protein',
        'Uzyskiwane z ziarna owsa zwyczajnego. Stosowane w regenerujących kosmetykach do włosów. W pielęgnacji włosów substancja ta jest klasyfikowana jako proteina, jednak posiada właściwości pośrednio nawilżające. Wytwarza okluzję, która zabezpiecza przed nadmiernym odparowaniem wody. Jest substancją antystatyczną – zmniejsza elektryzowanie się włosów. Ponadto stosowana jest w preparatach myjących w celu ograniczenia potencjalnego działania drażniącego anionowych substancji powierzchniowo czynnych jak np. Sodium Laureth Sulfate. Ze względu na duży rozmiar cząsteczki nie penetruje w głąb skóry, pozostając na powierzchni. Wykazuje doskonałe powinowactwo do powierzchni skóry, włosów i paznokci. Hydrolizat protein owsa wpływa na trwałość piany, gasząc ją. Substancja także wpływa na właściwości aplikacyjne kosmetyku - zwiększając jego lepienie i kleistość, przez co może utrudniać rozsmarowywalność gotowego produktu. Jest to substancja bezpieczna, nie wykazuje działania drażniącego.',
        NULL),
       (6, 1, 'Hydrolyzed Rice Protein',
        'Hydrolizowane enzymatycznie białka pozyskiwane z otrąb ryżowych. Stosowany w regenerujących kosmetykach do włosów. Substancja filmotwórcza. Zastosowana w szamponach zmniejsza działanie drażniące mocnych detergentów. Ze względu na duży rozmiar cząsteczki nie penetruje skóry, pozostając na powierzchni. Wykazuje doskonałe powinowactwo do powierzchni skóry, włosów oraz paznokci. Jest substancją antystatyczną zmniejszającą elektryzowanie się włosów. Jest to substancja bezpieczna, nie wykazuje działania alergicznego. Nadaje włosom objętości. Działa też powlekająco i pozwala zatrzymać wilgoć we włosie.',
        NULL),
       (7, 1, 'Hydrolyzed Soy Protein',
        'Proteina roślinna, nadaje włosom objętości. Jest to substancja antystatyczna, utrzymująca wilgoć i odżywiająca włosy, a także zmiękczająca i wygładzająca. Hydrolizaty proteinowe soi to substancja otrzymywana przez kwasową, alkaliczną lub enzymatyczną hydrolizę soi, składająca się głównie z aminokwasów, peptydów i protein. Może zawierać zanieczyszczenia, w skład których wchodzą głównie węglowodany i lipidy, wraz z niewielkimi ilościami różnych substancji organicznych pochodzenia biologicznego.\r\nSkładnik wykazuje działanie nawilżające i zmiękczające, ma właściwości filmotwórcze, lecz nietworzące tłustej powłoki, napina skórę, stosowany w kosmetykach liftingujących i do włosów. Tymczasowo wypełnia ubytki, uszkodzenia włosów, wzmacnia, wygładza i zapobiega elektryzowaniu. W kosmetykach myjących gasi pianę i redukuje drażniące działanie detergentów anionowych. Podnosi także lepkość kosmetyków.',
        NULL),
       (8, 2, 'Cocos Nucifera Oil',
        'Olej otrzymywany jest z miąższu orzechów palmy kokosowej. Zawiera triglicerydy kwasów tłuszczowych takich jak: laurynowego, mirystynowego, oleinowego, kaprynowego i kapronowego. Pełni rolę rozpuszczalnika dla innych substancji hydrofobowych (nierozpuszczalnych w wodzie) zawartych w kosmetykach. Tworzy tłusty film na powierzchni włosów i skóry głowy, zapobiegając utracie nawilżenia. Poprawia elastyczność włosów, zmniejszając ich łamliwość. Świetnie nada się dla włosów o niższej porowatości, dla włosów o wyższej porowatości może (ale nie musi!) powodować puszenie. Chroni skórę przed czynnikami zewnętrznymi. Stosowany w preparatach do pielęgnacji skóry i włosów ma działanie natłuszczające, wygładzające, zmiękczające i nadające połysk. Olej kokosowy topi się w temperaturze około 25°C. Często stosowany w preparatach do ciała, sztyftach, kosmetykach do skóry suchej oraz do włosów (głównie niskoporowatych).',
        NULL),
       (9, 2, 'Argania Spinosa Kernel Oil',
        'Olej o żółtym zabarwieniu, pozyskiwany jest  z ziaren endemicznego drzewa arganowego. Najbardziej popularny olej w pielęgnacji włosów i skóry w ostatnich latach. Nazywany jest płynnym złotem Maroka. Zawiera cenne składniki aktywne jak: tokoferole, polifenole i nienasycone kwasy tłuszczowe. Olej arganowy odżywia, odbudowuje i wzmacnia włosy, zmniejsza ich łamliwość, zapobiega rozdwajaniu końcówek. Intensywnie nawilża, nadaje włosom blask, intensywnie regeneruje włosy zniszczone. Emolient tłusty, tworzy na powierzchni skóry i włosów natłuszczającą, wygładzającą, odżywczą i zmiękczającą warstwę ochronną, która zapobiega odparowywaniu wilgoci i działa ochronnie. Poprawia elastyczność włosów, zmniejszając ich łamliwość. Świetnie nada się dla włosów o średniej porowatości.',
        NULL),
       (10, 2, 'Simmondsia Chinensis Seed Oil',
        'Tłuszcz roślinny pozyskiwany z wycisku nasion krzewu simondsii kalifornijskiej. W składzie znajdziemy nienasycone kwasy tłuszczowe. Stosowany w wygładzających produktach do włosów oraz nawilżających kosmetykach do skóry. Polecany do pielęgnacji skóry oraz przede wszystkim włosów. Nadaje im  blasku, wzmacnia. Stosowany szczególnie przy włosach suchych, zniszczonych, skłonnych do łamliwości.  Zapobiega rozdwajaniu i puszeniu się włosów. Tworzy okluzję, która zabezpiecza przed nadmiernym odparowaniem wody ze skóry i włosów. Działa kondycjonująco, wykazuje działanie pośrednio nawilżające. Dedykowany włosom średnioporowatym i wysokoporowatym. Jest to składnik bezpieczny zgodnie z obowiązującymi przepisami chemicznymi. Nie wykazuje działania alergicznego.',
        NULL),
       (11, 2, 'Macadamia Ternifolia Seed Oil',
        'Macadamia Ternifolia jest jednym z 10 gatunków drzew z rodziny srebrnikowatych. Olej pozyskuje się metodą tłoczenia nasion, czyli jego orzechów. Ma żółty kolor, lekko orzechowy zapach i jest dość rzadki i klarowny. Dobrze się wchłania, nadając powierzchniom delikatny blask. Zawiera ok. 60% kwasu oleinowego, 20% kwasu palmitynowego i do 10% nasyconych kwasów tłuszczowych, bogaty w witaminy: A, B, E oraz składniki mineralne. Jest olejem nieschnącym, dość trwałym, nie wymaga przechowywania w lodówce, należy go jednakże chronić przed światłem, w temp. pokojowej zachowuje świeżość przez ok. 6-8 miesięcy, w lodówce nawet rok. Może być nakładany bezpośrednio na skórę. Olej poprawia stan włosów, działa odbudowująco, rewitalizująco i nawilżająco. Zastosowany w preparatach do pielęgnacji skóry i włosów tworzy na ich powierzchni warstwę okluzyjną, która ogranicza nadmierne odparowywaniu wody z powierzchni (jest to pośrednie działanie nawilżające), przez co kondycjonuje skórę i włosy. Stosowany w produktach do pielęgnacji włosów zapobiega ich łamliwości, wzmacnia je i regeneruje po zabiegach fryzjerskich. ',
        NULL),
       (12, 2, 'Linum Usitatissimum Seed Oil',
        'Jest to wyciąg z lnu zwyczajnego, który w swoim składzie ma dużo cudownych składników aktywnych. W nasionach jest 30-40% tłuszczu, którego głównym składnikiem są: glicerydy kwasu oleinowego (10-18%), linolenowego (23-24%) i linolowego (35-50%) oraz fitosterole i witamina E.  W śluzie są glikozydy, enzymy, fitosterole, fitoestrogeny, witaminy: A,  E i F oraz mikroelementy. Zapewnia bogatą teksturę kosmetykom. Jest nośnikiem innych substancji rozpuszczalnych w tłuszczach. Jest lekkim emolientem, szybko się wchłania. Jest bogatym źródłem kwasów tłuszczowych, szczególnie omega 3. Stosowany w preparatach do pielęgnacji skóry i włosów ma działanie natłuszczające, wygładzające, zmiękczające i nadające połysk. Działa nawilżająco, kondycjonuje skórę i włosy, wspomaga procesy regeneracyjne. Jest to substancja bezpieczna zgodnie z obowiązującymi przepisami chemicznymi. Nie wykazuje działania alergicznego.',
        NULL),
       (13, 2, 'Butyrospermum Parkii Butter/Shea Butter',
        'Tłuszcz roślinny pozyskiwany z drzewa Vitellaria paradoxa (masłosz Parka). Jest bogate w kwas nasycony stearynowy oraz w kwasy omega 9. Stosowany w wygładzających produktach do włosów oraz nawilżających kosmetykach do skóry. Tworzy okluzję, która ogranicza nadmierną ucieczkę wody ze skóry oraz włosów. Wykazuje działanie pośrednio nawilżające, działa kondycjonująco na skórę i włosy. Zmiękcza i uelastycznia włosy, sprawdzi się do każdej porowatości włosów. Masło shea, m.in. jako składnik masek, polecane jest przede wszystkim dla osób mających problemy z ich przesuszaniem się. Jest to substancja bezpieczna zgodnie z obowiązującymi przepisami chemicznymi. Nie wykazuje działania alergicznego.',
        NULL),
       (14, 2, 'Persea Gratissima Oil', 'OPIS', NULL),
       (15, 3, 'Glycerin',
        'Organiczny związek chemiczny, najprostszy trwały alkohol wielowodorotlenowy. Stosowana w nawilżających kosmetykach do włosów i skóry.  Jest to hydrofilowa substancja nawilżająca. Posiada zdolność przenikania przez warstwę rogową. Ułatwia transport innych substancji w głąb skóry, wiąże wodę w naskórku. Stosowana w kosmetykach poprawia ich konsystencję i wpływa na lekkość produktu. Jest częstym dodatkiem do szamponów, odżywek, masek i nie tylko. Podobnie jak w produktach, dodaje lekkości włosom, choć czasem lubi je spuszyć! Nawilża, działa łagodząco, ułatwia przenikanie substancji aktywnych. Jest to substancja bezpieczna zgodnie z obowiązującymi przepisami chemicznymi. Nie wykazuje działania alergicznego.',
        NULL),
       (16, 3, 'Panthenol',
        'Organiczny związek chemiczny z grupy alkoholi polihydroksylowych, analog kwasu pantotenowego, jedna z substancji stanowiących witaminę B5. Stosowany w nawilżających produktach do pielęgnacji włosów i skóry. Jest to hydrofilowa substancja nawilżająca. Działa nawilżająco na włosy i kojąco na skórę skłonną do podrażnień. W odróżnieniu od innych humektantów niesie bardzo małe prawdopodobieństwo spuszenia, dlatego nazywamy go “mokrym humektantem”. Możemy go znaleźć zarówno w szamponach, jak i odżywkach, maskach, stylizatorach czy też wcierkach do wrażliwej skóry głowy. W kontakcie z naskórkiem i strukturą włosów przemienia się w aktywną biologicznie witaminę B5. Działa przeciwzapalnie, przyspiesza regenerację naskórka, łagodzi podrażnienia. Nadaje skórze gładkości, a włosom miękkości. Stymuluje wzrost włosów. Jest to substancja bezpieczna zgodnie z obowiązującymi przepisami chemicznymi. Nie wykazuje działania alergicznego.',
        NULL),
       (17, 3, 'Aloe Barbadensis Leaf Juice',
        'Jest to substancja nazywana sokiem ze świeżych liści aloesu. Działa przeciwzapalnie, bakteriobójczo, regenerująco i nawilżająco. Występuje w produktach kosmetycznych przeznaczonych do włosów, ponieważ nadaje im puszystość, ułatwia układanie, likwiduje łupież, a także zapobiega ich wypadaniu. Wyciągi z liści aloesu drzewiastego stosowane są też  jako filtry UVB. Działa nawilżająco na włosy i skórę głowy. Stosowane na skórę ma także działanie łagodzące i przeciwzapalne. Warto stosować go razem z emolientem, ponieważ solo odparowuje z powierzchni włosów i skóry wraz z wilgocią, przez co może wzmagać przesuszenie. Jeżeli w produkcie nie ma olejów ani silikonów, jest większa szansa, że spuszy on włosy. Tym większa, jeżeli w składzie znajdzie się również gliceryna i/lub pantenol. Po zaaplikowaniu i zmyciu wystarczy zrównoważyć powierzchnię włosa maską emolientową.',
        NULL),
       (18, 3, 'Hyaluronic Acid',
        'Jest to związek silnie higroskopijny - jedna cząsteczka kwasu hialuronowego wiąże nawet 250 cząsteczek wody. Dlatego dodawany do kosmetyków poprawia ich właściwości sensoryczne, ułatwia rozprowadzanie oraz zapobiega wysychaniu produktu. Może służyć jako składnik żelujący. Szczególne wskazania do stosowania kwasu hialuronowego to wolno rosnące, suche i zniszczone włosy, rozdwojone końcówki włosów. Kwas hialuronowy dodany do szamponów czy odżywek skutecznie wzmocni pielęgnujące właściwości tych kosmetyków. Dodatkowo nada efekt gładkich, lśniących i śliskich włosów. Dodawany do szamponu ogranicza wysuszające działanie detergentów, a odżywkę wspiera w jej głęboko nawilżającym działaniu. Kwas odżywia kosmyki i wypełnia ubytki w strukturze włosa.',
        NULL),
       (19, 3, 'Urea',
        'Organiczny związek chemiczny, diamid kwasu węglowego, występujący w postaci białych kryształów. Stosowany w nawilżających kosmetykach do pielęgnacji włosów i skóry. Jest to hydrofilowa substancja nawilżająca. Działa keratoplastycznie (zmiękcza warstwę rogową), a w wyższych stężeniach działa keratolitycznie (złuszcza zrogowaciały naskórek). Jedną z głównych właściwości mocznika jest działanie nawilżające. Wiąże się ono z tym, że urea jest humektantem oraz posiada higroskopijne właściwości. Oznacza to, że mocznik pochłania wilgoć, a do tego silnie nawilża. Jest to substancja bezpieczna zgodnie z obowiązującymi przepisami chemicznymi. Nie wykazuje działania alergicznego.',
        NULL),
       (20, 3, 'Mel/Honey extract',
        'Jak działa miód w pielęgnacji włosów? Głównie nawilżając je. Nawilżone włosy stają się pełne blasku i bardziej miękkie. Będzie to szczególnie widoczne przy włosach przesuszonych, łamliwych, matowych i to już po kilku tygodniach stosowania. Miód działa nie tylko na włosy, ale również na skórę głowy. Odżywia ją, wspomaga gojenie podrażnień i tonizuje, co ma z kolei wpływ na wzrost włosów, a więc i ich gęstość. Stosowany w nawilżających i regeneracyjnych kosmetykach działa kondycjonująco na włosy i skórę. Ma właściwości rozjaśniające włosy i przeciwłupieżowe. Jest to substancja bezpieczna zgodnie z obowiązującymi przepisami chemicznymi. Nie wykazuje działania alergicznego.',
        NULL),
       (21, 3, 'Lactic Acid',
        'Organiczny hydroksykwas. Substancja hydrofilowa - rozpuszczalna w wodzie. Kwas mlekowy występuje w dwóch formach optycznych L i D, z których tylko forma L-kwasu mlekowego posiada biologiczną aktywność i jest naturalnym składnikiem skóry i włosów. Jest on jedną z głównych składowych NMF (Naturalnego Czynnika Nawilżającego), który odpowiada za odpowiednie nawodnienie naskórka. W kosmetyce wykorzystuje się głównie kwas L-mlekowy, który można otrzymać wyłącznie podczas naturalnego procesu fermentacji cukrów z udziałem bakterii mlekowych z rodzaju Lactobacillus. W pielęgnacji włosów i odpowiednio niskich stężeniach działa wygładzająco i nabłyszczająco. W produktach do skóry głowy pomaga przywracać prawidłowe pH i stan bariery hydrolipidowej. Przyśpiesza wzrost włosów. Stabilizuje pH kosmetyku i zapobiega jego wysychaniu. Jeden z naturalnych składników skóry i włosów. Pomaga utrzymać odpowiedni poziom nawilżenia, pobudza skórę do regeneracji i wzmacnia jej barierę ochronną.',
        NULL);

-- --------------------------------------------------------

--
-- Table structure for table products
--

CREATE TABLE products
(
    product_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT,
    img_url     text COLLATE utf8_polish_ci
);

--
-- Dumping data for table products
--

INSERT INTO products (product_id, name, description, img_url)
VALUES (1, 'HAIRY TALE COSMETICS OATME - proteinowa maska do włosów o każdej porowatości',
        'Aqua, Cetearyl Alcohol, Dicaprylyl Carbonate, Hydrogenated Sunflower Seed Oil Polyglyceryl-3 Esters, Behentrimonium Methosulfate, Hydrolyzed Oats, Bis-(Isostearoyl/Oleoyl Isopropyl) Dimonium Methosulfate, Hydrogenated Sunflower Seed Oil Glyceryl Esters, Avena sativa (Oat) Kernel Extract, Hydrolyzed Wheat Protein, Hydrolyzed Rice Protein, Avena Sativa Kernel Flour, Kaempferia Galanga Root Extract, Hydrolyzed Jojoba Esters, Benzyl Alcohol, Tocopherol, Sodium Stearoyl Lactylate, Parfum, Dehydroacetic Acid, Sodium Benzoate, Potassium Sorbate, Citric Acid.',
        '1.png'),
       (2, 'ANWEN KIEŁKI PSZENICY I KAKAO - maska do włosów wysokoporowatych',
        'Aqua, Cetearyl Alcohol, Triticum Vulgare (Wheat) Germ Oil, Behentrimonium Chloride, Honey, Glycerin, Lanolin, Theobroma Cacao (Cocoa) Seed Butter, Panthenol, Silicone Quaternium-22, Polyglyceryl-3 Caprate, Dipropylene Glycol, Cocamidopropyl Betaine, Phenoxyethanol, Benzoic Acid, Dehydroacetic Acid, Parfum, Benzyl Alcohol, Benzyl Benzoate.',
        '2.png'),
       (3, 'YOPE BALANCE MY HAIR - zmiękczająca odżywka do włosów',
        'Aqua, Cetearyl Alcohol, Brassicamidopropyl Dimethylamine, Macadamia Integrifolia Seed Oil, Adansonia Digitata Seed Oil, Aspartic Acid, Cetyl Esters, Gluconolactone, Glyceryl Stearate, Propanediol, Backhousia Citriodora Leaf Extract, Azadirachta Indica Leaf Extract, Lactic Acid, Tartaric Acid, Hibiscus Sabdariffa Flower Extract, Bellis Perennis (Daisy) Flower Extract, Jasminum Officinale (Jasmine) Flower Extract, Spiraea Ulmaria Flower Extract, Levulinic Acid, Glycerin, Sodium Levulinate, 1,2-Hexanediol, Citric Acid, Butylene Glycol, Parfum, Hexyl Cinnamal, Limonene, Linalool.',
        '3.png'),
       (4, 'YOPE BOOST MY HAIR - regenerująca odżywka do włosów',
        'Aqua, Cetearyl Alcohol, Brassicamidopropyl Dimethylamine, Squalane, Cetyl Esters, Limnanthes Alba (Meadowfoam) Seed Oil, Ethyl Olivate, Glyceryl Stearate, Hydrolyzed Rice Bran Protein, Hydrolyzed Soy Protein, Kappaphycus Alvarezii Extract, Ganoderma Lucidum (Mushroom) Extract, Laminaria Saccharina Extract, Glycine, Olea Europaea (Olive) Leaf Extract, Gluconolactone, Glycerin, Sodium Levulinate, Levulinic Acid, Parfum, Aspartic Acid, Tetrasodium Glutamate Diacetate, Tocopherol, Lactic Acid, Maltodextrin, Sodium Benzoate, Potassium Sorbate.',
        '4.png'),
       (5, 'ANWEN MAGNOLIA - proteinowa odżywka do włosów średnioporowatych',
        'Aqua, Cetearyl Alcohol, Behentrimonium Chloride, PPG-3 Benzyl Ether Myristate, Hydrolyzed Milk Protein, Hydrolyzed Oats, Hydrolyzed Keratin, Cetrimonium Chloride, Starch Hydroxypropyltrimonium Chloride, Phenoxyethanol, Benzoic Acid, Dehydroacetic Acid, Parfum.',
        '5.png'),
       (6, 'ANWEN RÓŻA - emolientowa odżywka do włosów wysokoporowatych',
        'Aqua, Cetearyl Alcohol, Butyrospermum Parkii (Shea Butter), Cucurbita Pepo (Pumpkin) Seed Oil, Behentrimonium Chloride, Brassica Oleracea Italica Seed Oil, Papaver Somniferum Seed Oil, Carthamus Tinctorius Seed Oil, Raphanus Sativus Seed Oil, Cetrimonium Chloride, Starch Hydroxypropyltrimonium Chloride, Phenoxyethanol, Benzoic Acid, Dehydroacetic Acid, Parfum, Citronallol, Geraniol, Linalool.',
        '6.png'),
       (7, 'ANWEN MELISA - emolientowa odżywka do włosów wysokoporowatych',
        'Aqua, Cetearyl Alcohol, Papaver Somniferum Seed Oil, Behentrimonium Methosulfate, Raphanus Sativus Seed Oil, Carthamus Tinctorius Seed Oil, Brassica Oleracea Italica Seed Oil, Starch Hydroxypropyltrimonium Chloride, Urea*, Lactic Acid, Sodium Lactate, Cetrimonium Chloride, Parfum, Sodium Hydroxide, Phenoxyethanol, Benzoic Acid, Dehydroacetic Acid.',
        '7.png'),
       (8, 'JOANNA KONOPIE - odżywka-wcierka do skóry głowy i włosów nawilżająco-wzmacniająca',
        'Aqua,Hydroxypropyltrimonium Honey, Aloe Barbadensis Leaf Juice, Hexapeptide-11, Cannabis Sativa Seed Extract, Saccharum Officinarum Extract, Citrus Limon Fruit Extract, Pyrus Malus Fruit Extract, Camellia Sinensis Leaf Extract, Niacinamide, Allantoin, Panthenol, Glycerin, Betaine, Hexylene Glycol, Laureth-10, Leuconostoc/Radish Root Ferment Filtrate, Parfum, Citronellol, Geraniol, Alpha-Isomethyl Ionone, Linalool, Limonene, Sodium Benzoate, Potassium Sorbate, Citric Acid, Sorbic Acid, Triethanolamine, Phenoxyethanol, Benzoic Acid.',
        '8.png'),
       (9, 'NACOMI - odżywka do włosów z olejem ze słodkich migdałów',
        'Aqua, Cetearyl Alcohol, Prunus Amygdalus Dulcis Oil, Glycerin, Panthenol, Cetrimonium Chloride, Behentrimonium Chloride, Benzyl Alcohol, Parfum, Hydrolyzed Rice Protein, Hydrolyzed Glycosaminoglycans, Dehydroacetic Acid, Hyaluronic Acid.',
        '9.png'),
       (10, 'ANWEN BEZ - odżywka nawilżająca do włosów różnej porowatości',
        'Aqua, Cetearyl Alcohol, Behentrimonium Chloride, Starch Hydroxypropyltrimonium Chloride, Solanum Tuberosum (Potato) Starch, Allium Cepa Extract, Saccharide Isomerate, Hydroxypropyltrimonium Hyaluronate, Aloe Barbadensis (Aloe Vera) Leaf Juice Powder, Cetrimonium Chloride, Glycerin, Urea, Polysorbate 80, Hydroxypropyl Guar, Citric Acid, Sodium Citrate, Phenoxyethanol, Benzoic Acid, Dehydroacetic Acid, Caprylyl Glycol, Parfum, Amyl Cinnamal, Cinnamyl Alcohol, Hydroxycitronellal.',
        '10.png'),
       (11, 'YUMI - odżywka proteinowa do włosów',
        'Aqua, Cetearyl Alcohol, Vitis Vinifera Seed Oil, Distearoylethyl Dimonium Chloride, Isopropyl Palmitate,Triticum Vulgare Germ Oil, Helianthus Annuus Seed Oil, Olus Oil, Aloe Barbadensis Leaf Juice, Vitis Vinifera Fruit Extract, Glycerin, Hydrolyzed Corn Protein, Hydrolyzed Wheat Protein, Hydrolyzed Soy Protein, Leuconostoc/Radish Root Ferment Filtrate, Rubus Idaeus Fruit Extract, Pyrus Communis Fruit Extract, Citrus Grandis Fruit Extract, Behenamidopropyl Dimethylamine, Tocopherol, Gluconolactone, Hydroxypropyl Guar Hydroxypropyltrimonium Chloride, Lactic Acid, Parfum, Disodium EDTA, Sodium Benzoate, Potassium Sorbate, Citronellol, Hexyl Cinnamal, Linalool.',
        '11.png'),
       (12, 'HEBE COSMETICS SMOOTHING CONDITIONER - wygładzająca odżywka do włosów',
        'Aqua, Cetearyl Alcohol, Glycerin, Butyrospermum Parkii Butter, Behentrimonium Chloride, Hydrolyzed Wheat Protein, Hydrolyzed Wheat Starch, Linum Usitatissimum Seed Extract, Centaurea Cyanus Flower Extract, Lactic Acid, Parfum, Sodium Benzoate, Potassium Sorbate, Phenoxyethanol, Ethylhexylglycerin, Isopropyl Alcohol, Propylene Glycol.',
        '12.png'),
       (13, 'SYLVECO - wygładzająca odżywka do włosów',
        'Aqua,Cetyl Alcohol,Sucrose,Vitis Vinifera Seed Oil,Olea Europaea Fruit Oil,Glycerin,Stearic Acid,Arctium Lappa Extract,Panthenol,Decyl Glucoside,Argania Spinosa Kernel Oil,Glyceryl Oleate,Lactic Acid,Cyamopsis Tetragonoloba Gum,Sodium Benzoate,Cocamidopropyl Betaine,Pinus Silvestris Oil.',
        '13.png'),
       (14, 'ORIENTANA - odżywka do włosów imbir i trawa cytrynowa',
        'Aqua, Prunus Amygdalus Dulcis Oil, Glycerin, Stearyl Alcohol, Simmondsia Chinesis Oil, Aquaxyl, Aloe Barbadensis Leaf Juice, Cetyl Alcohol, Glycyrrhiza Glabra Root Extract Hydrogenated Vegetable Oil, Centella Asiatica Extract, Citrus Medica Limonum Fruit Powder, Acacia Concinna Fruit Powder, Tocopherol, Sodium PCA, Polyquaternium 10, Cymbopogon Schoenanthus Oil, Zingiber Officinale Oil, Cetrimonium Chloride, Trachyspermum Ammi Flower Extract, Sodium Benzoate, Potassium Sorbate.',
        '14.png'),
       (15, 'EQUILIBRA TRICOLOGICA - nawilżająca odżywka do włosów',
        'Aqua (Water), Aloe Barbadensis Leaf Juice, Cetearyl Acohol, Argania Spinosa Kernel Oil, Hydrolyzed Hemp Seed Extract, Hydrolyzed Rice Protein, Lecithin, Tocopherol, Sodium Phytate, Ascorbyl Palmitate, Sodium Benzoate, Potassium Sorbate, Citric Acid, Lactic Acid, Cetrimonium Chloride, Ethylhexylglycerin, Phenoxyethanol, Parfum (Fragrance).',
        '15.png'),
       (16, 'JOANNA KONOPIE - nawilżająco-wzmacniająca odżywka do włosów delikatnych i uwrażliwionych',
        'Aqua,Cetearyl Alcohol, Glycerin, Cetyl Esters, Stearamidopropyl Dimethylamine, Propylheptyl Caprylate, Quaternium-91, Cetrimonium Chloride, Cannabis Sativa Seed Extract, Cocos Nucifera Oil, Isostearyl Isostearate, Macadamia Ternifolia Seed Oil, Polyquaternium-10, Lactic Acid, Panthenol, Isopropyl Alcohol, Cetrimonium Methosulfate, Leuconostoc/Radish Root Ferment Filtrate, Parfum, Linalool, Alpha-Isomethyl Ionone, Citronellol, Limonene, Geraniol, Tocopherol, Phenoxyethanol, Caprylyl Glycol.',
        '16.png'),
       (17, 'NACOMI HAIR - nawilżająco-wygładzająca odżywka do włosów',
        'Aqua, Glycerin, Cetearyl Alcohol, Hydrolyzed Wool, Macadamia Ternifolia Seed Oil, Argania Spinosa Kernel Oil, Cetrimonium Chloride, Panthenol, Prunus Amygdalus Dulcis Oil, Behentrimonium Chloride, Benzyl Alcohol, Parfum, Citric Acid, Hydrolyzed Rice Protein, Hydrolyzed Glycosaminoglycans, Dehydroacetic Acid, Leuconostoc/Radish Root Ferment Filtrate, Hyaluronic Acid.',
        '17.png'),
       (18, 'BIOVAX - odżywka do włosów z olejkiem arganowym, kokosowym i makadamia',
        'Aqua, Cetyl Alcohol, Glycerin, Cetyl Esters, Behentrimonium Chloride, Stearamidopropyl Dimethylamine, Cetearyl Alcohol, Sorbitol, Ceteareth-20, Simmondsia Chinensis (Jojoba) Seed Oil, Panthenol, Argania Spinosa Kernel Oil, Macadamia Integrifolia Seed Oil, Cocos Nucifera Oil, Parfum, Citric Acid, Benzyl Alcohol, Methylchloroisothiazolinone, Methylisothiazolinone, Isopropyl Alcohol, CI 15985.',
        '18.png'),
       (19, 'VIS PLANTIS - odżywka do włosów osłabionych z tendencją do wypadania',
        'Aqua, Cetearyl Alcohol, Glycerin, Behenamidopropyl Dimethylamine, Isopropyl Palmitate, Trigonella Foenum Extract, Raphanus Sativus Root Extract, Equisetum Arvense Extract, Butyrospermum Parkii Butter, Cetrimonium Chloride, Niacinamide, Lactic Acid, Parfum, Sodium Benzoate, Potassium Sorbate, Hexyl Cinnamal, Limonene, Linalool.',
        '19.png'),
       (20, 'TOŁPA GREEN - odżywka chroniąca kolor włosów',
        'Aqua, Cetearyl Alcohol, Cetyl Esters, Hydroxypropyl Starch Phosphate, Betaine, Orbignya Oleifera Seed Oil, Behentrimonium Chloride, Creatine, Ribes Nigrum Seed Oil, Peat Extract, Hydroxypropyl Guar Hydroxypropyltrimonium Chloride, Lactic Acid, Isopropyl Alcohol, Parfum, Methylpropanediol, Benzoic Acid, Caprylyl Glycol, Triethyl Citrate, Glyceryl Caprylate.',
        '20.png'),
       (21, 'NACOMI HAIR - odżywczo-regenerująca odżywka do włosów',
        'Aqua, Cetearyl Alcohol, Glycerin, Macadamia Ternifolia Seed Oil, Behentrimonium Chloride, Cetrimonium Chloride, Panthenol, Persea Gratissima Oil, Plukenetia Volubilis Seed Oil, Benzyl Alcohol, Hydrolyzed Keratin, Parfum, Soluble Collagen, Citric Acid, Hydrolyzed Silk, Propylene Glycol, Honey Extract, Sodium PCA, Dehydroacetic Acid, Leuconostoc/Radish Root Ferment Filtrate, Hydrolyzed Elastin, Glycogen, Serine.',
        '21.png'),
       (22, 'SATTVA - odżywka mango do włosów',
        'Aqua, Cetosteryl, Glycerine, Propanediol, Coconut Oil, Cetrimonium, Milk Protein, Jojoba Oil, Aloe Vera Extract, Ethylhexylglycerin, Coco Butter, Shea Butter, Mango Extract, Citric Acid, Vitamin E, Fragrance-Mango Ess Oil, 2 Phenoxyethanol, Sodium Gluconate.',
        '22.png'),
       (23, 'HAIRY TALE COSMETICS LIQUID GOLD - bogata emolientowa maska do włosów o wysokiej porowatości',
        'Aqua, Isodecyl Oleate, Cetearyl Alcohol, Diethylhexyl Succinate, Cetyl Alcohol, Dicaprylyl Carbonate, Cetyl Palmitate, Crambe Abyssinica Seed Oil, Argania Spinosa Kernel Oil, Moringa Oil/Hydrogenated Moringa Oil Esters, Behentrimonium Methosulfate, Ethyl Canolate, Tocopheryl Acetate, Behenyl/Stearyl Aminopropanediol Esters, Guar Hydroxypropyltrimonium Chloride, Oryza Sativa (Rice) Starch, Sodium Levulinate, Potassium Sorbate, Trisodium Ethylenediamine Disuccinate, Parfum, Coumarin, Benzyl Salicylate.',
        '23.png'),
       (24, 'ANWEN WINOGRONA I KERATYNA - maska do włosów średnioporowatych',
        'Aqua, Cetearyl Alcohol, Vitis Vinifera (Grape) Seed Oil, Behentrimonium Chloride, Glycerin, Hydrolyzed Keratin, Hydrolyzed Silk, Silica, Aloe Barbadensis Leaf Juice Powder, Panthenol, Phenoxyethanol, Benzoic Acid, Dehydroacetic Acid, Parfum.',
        '24.png'),
       (25, 'PETAL FRESH PURE - odżywka do włosów nadająca im blask',
        'Aqua (Water), Glycerin (Derived from Vegetable Oil), Caprylic/Capric Triglyceride (Derived from Coconut), Behenyl Alcohol (Derived from Coconut Oil), Cetearyl Alcohol (Derived from Coconut Oil), Hydroxypropyl Methylcellulose (Derived from Cotton Fiber), *Olea Europaea (Olive) Fruit Oil, Helianthus Annuus (Sunflower) Seed Oil, Tocopheryl Acetate (Vitamin E), Panthenol (Vitamin B5), *Aloe Barbadensis (Aloe Vera) Leaf Juice, *Citrus Aurantium Dulcis (Orange) Fruit Extract, *Citrus Medica Limonium (Lemon) Fruit Extract, *Citrus Grandis (Grapefruit) Leaf Extract, *Citrus Nobilis (Mandarin Orange) Fruit Extract, *Salvia Officinalis (Sage) Leaf Extract, Orbignya Oleifera (Babassu) Seed Oil, *Tussilago Farfara (Coltsfoot), Flower Extract, *Archillea Millefolium (Yarrow) Extract, *Equisetum Arvense (Horsetail) Extract, *Rosmarinus Officinalis (Rosemary) Leaf Extract, *Althaea Officinalis (Marshmallow) Root Extract, *Chamomilla Recutita (Chamomile) Flower Extract, *Mellisa Officinalis (Lemon Balm) Leaf Extract, *Thymus Vulgaris (Thyme) Extract, Dehydroacetic Acid (Derived from Cane Sugar), Ethylhexylglycerin (Derived from Vegetable Oil) **Fragrance. \r\n[*Certified Organic Ingredients **Natural Fragrance with Essential Oils]\r\n',
        '25.png'),
       (26, 'TOŁPA GREEN - odżywka wzmacniająca do włosów osłabionych',
        'Aqua, Cetearyl Alcohol, Persea Gratissima Oil, Hydroxypropyl Starch, Phosphate, Coco-Caprylate, Betaine, Creatine, Behentrimonium Chloride, Cannabis Sativa Seed Oil, Olus Oil, Tocopherol, Peat Extract, Hydroxypropyl Guar, Hydroxypropyltrimonium Chloride, Lactic Acid, Isopropyl Alcohol, Parfum, Methylpropanediol, Benzoic Acid, Caprylyl Glycol, Triethyl Citrate, Glyceryl Caprylate.',
        '26.png'),
       (27, 'ANWEN EMOLIENTOWY IRYS - odżywka do włosów o średniej porowatości',
        'Aqua, Macadamia Ternifolia Seed Oil, Cetearyl Alcohol, Behentrimonium Chloride, Brassica Oleracea Italica Seed Oil, Moringa Oleifera Seed Oil, Prunus Domestica (Plum) Seed Oil, Camellia Japonica Seed Oil, Starch Hydroxypropyltrimonium Chloride, Cetrimonium Chloride, Phenoxyethanol, Benzoic Acid, Dehydroacetic Acid, Parfum.',
        '27.png'),
       (28, 'BARWA ODMŁADZAJĄCA ODŻYWKA RYŻOWA - do włosów przesuszonych i osłabionych',
        'Aqua, Cetearyl Alcohol, Behentrimonium Chloride, Cocos Nucifera Oil, Oryza Sativa Seed Protein, Phytic Acid, Oryza Sativa Extract, Glycerin, Biotin, Panthenol, Linoleic Acid, Linolenic Acid, Tocopheryl Acetate, Retinyl Palmitate, Bioflavonoids, Gluconolactone, Calcium Gluconate, Pyridoxine HCL, Propylene Glycol, Polysorbate 20, Cetrimonium Chloride, Citric Acid, Parfum, Linalool, Limonene.',
        '28.png'),
       (29, 'BARWA ODŻYWKA ZWIĘKSZAJĄCA OBJĘTOŚĆ PIWONIA - do włosów cienkich i matowych',
        'Aqua, Cetearyl Alcohol, Behentrimonium Chloride, Paeonia Lactiflora Root Extract, Trehalose, Hydrolyzed Wheat Gluten, Simmondsia Chinensis (Jojoba) Seed Oil, Vitis Vinifera Seed Oil, Glycerin, Cetrimonium Chloride, Citric Acid, Parfum.',
        '29.png'),
       (30, 'BARWA REGENERUJĄCA ODŻYWKA AWOKADO - do włosów łamliwych, suchych i zniszczonych',
        'Aqua, Cetearyl Alcohol, Behentrimonium Chloride, Persea Gratissima (Avocado) Oil, Vegetable Oil, Butyrospermum Parkii Butter, Cocos Nucifera Oil, Biotin, Bioflavonoids, Pyridoxine HCI, Linoleic Acid, Linolenic Acid, Tocopherol, Retinyl Palmitate, Tocopheryl Acetate, Panthenol, Glycerin, Cetrimonium Chloride, Propylene Glycol, Polysorbate 20, Citric Acid, Parfum, Benzyl Salicylate, Limonene.',
        '30.png'),
       (31, 'BARWA WYGŁADZAJĄCA ODŻYWKA LNIANA - do włosów przesuszonych i zniszczonych',
        'Aqua, Cetearyl Alcohol, Behentrimonium Chloride, Linum Usitatissimum Seed Oil, Linum Usitatissimum Seed Extract, Linoleic Acid, Linolenic Acid, Tocopheryl Acetate, Retinyl Palmitate, Bioflavonoids, Biotin, Glycerin, Panthenol, Pyridoxine HCl, Cetrimonium Chloride, Propylene Glycol, Polysorbate 20, Citric Acid, Parfum, Linalool, Limonene.',
        '31.png'),
       (32, 'CANTU LEAVE-IN CONDITIONING CREAM - odżywka bez spłukiwania',
        'Water (Aqua), Cetearyl Alcohol, Canola Oil, Butyrospermum Parkii (Shea) Butter, Cetyl Alcohol, Stearamidopropyl Dimethylamine, Glycerin, Phenoxyethanol, Ceteareth-20, Parfum (Fragrance), Lactic Acid, Polyquaternium-4, Ethylhexylglycerin, Stearic Acid, Panthenol, Olea Europea (Olive) Fruit Oil, Cocos Nucifera (Coconut) Oil, Aloe Barbadensis (Aloe Vera) Leaf Extract (decolorized), Glycine Soja (Soybean) Oil, Simmondsia Chinesis Oil (Jojoba), Mangifera Indica (Mango) Seed Butter, Argania Spinosa Kernal Oil (Argan), Melia Azadirachta Seed Oil (Neem), Mangifera Indica Seed Oil (Mango) Seed Oil, Macadamiaternifolia Seed Oil (Macadamia), Vitis Vinifera Seed Oil (Grape), Persea Gratissima Oil (Avocado), Alcohol, Silk Amino Acids, Ethylester of Hydrolyzed Silk, Saccharum Officinarum Extract (Sugar Cane), Camellia Sinensis Leaf Extract (Green Tea), Pyrus Malus Fruit Extract (Apple), Citrus Limon Fruit Extract (Lemon), Hexylene Glycol, Betaine, Lonicera Japonica Flower Extract (Honeysuckle), Laminara Cloustoni Extract (Sea Kelp), Salvia Officinalis (Sage) Leaf Extract, Urtica Dioica Extract (Nettle), Hexapeptide-1, Benzyl Benzoate, Coumarin, Hexyl Cinnamal.',
        '32.png'),
       (33, 'EQUILIBRA NAWILŻAJĄCA MASKA ALOESOWA',
        'Aqua (Water), Aloe Barbadensis Leaf Juice, Prunus Amygdalus Dulcis (Sweet Almond) Oil, Cetyl Alcohol, Myristyl Alcohol, Stearamidopropyl Dimethylamine, Linum Usitatissimum (Linseed) Seed Oil, Glycerin, Urtica Dioica (Nettle) Leaf Extract, Ascorbyl Palmitate, Tocopherol, Guar Hydroxypropyltrimonium Chloride, Lecithin, Hydroxyethylcellulose, Sodium Phytate, Citric Acid, Sodium Levulinate, Sodium Benzoate, Lactic Acid, Parfum (Fragrance).',
        '33.png'),
       (34, 'MATERNATURA  - maska do włosów suchych z nasionami słonecznika',
        'Aqua, Behenamidopropyl Dimethylamine, Helianthus Annuus (Sunflower) Seed Oil (*), Glycerin, Cetyl Alcohol, Myristyl Alcohol, Myristyl Lactate, Sorbitol, Ethylhexyl Palmitate, Avena Sativa (Oat) Bran Extract (*), Linum Usitatissimum (Linseed) Seed Extract (*), Panicum Miliaceum Extract (*), Helianthus Annuus (Sunflower) Seed Extract (*), Tocopherol, Lactic Acid, Benzyl Alcohol, Parfum [fragrance], Benzoic Acid, Xanthan Gum, Dehydroacetic Acid, Hexyl Cinnamal, Coumarin, Linalool. \r\n[*from Organic Agriculture]\r\n',
        '34.png'),
       (35, 'MELICA ORGANIC - odżywka nadająca objętości',
        'Aqua, Cetearyl Alcohol, Glycerin, Brassicyl Isoleucinate Esylate (and) Brassica Alcohol, Olea Europaea (Olive) Husk Oil, Tocopherol, Hydrolyzed Keratin, Hydrolyzed Wheat Protein, Honey (Mel) Extract, Parfum, Polyquaternium-10, Sodium Benzoate, Potassium Sorbate, Parfum, Citric Acid, Arginine.',
        '35.png'),
       (36, 'SYLVECO LNIANA MASKA DO WŁOSÓW',
        'Aqua, Linum Usitatissimum Seed Extract, Cetyl Alcohol, Cocos Nucifera Oil, Sucrose, Glycerin, Vitis Vinifera Seed Oil, Stearic Acid, Panthenol, Decyl Glucoside, Lactic Acid, Glyceryl Oleate, Cyamopsis Tetragonoloba Gum, Tocopheryl Acetate, Cocamidopropyl Betaine, Sodium Benzoate.',
        '36.png'),
       (37, 'ZIAJA SKONCENTROWANA MASKA WYGŁADZAJĄCA',
        'Aqua, Cetearyl Alcohol, Cetrimonium Chloride, Cetyl Esters, Behentrimonium Chloride, Isopropyl Myristate, Panthenol, Argania Spinosa Kernel Oil, Camellia Japonica Seed Oil, Sodium Benzoate, Parfum (Fragrance), Linalool, Citric Acid.',
        '37.png'),
       (38, 'PHITOFILOS BALSAMO RISTRUTTURANTE - odżywka odbudowująca',
        'Aqua, Myristyl Alcohol, Behenamidopropyl Dimethylamine, Caprylic/capric Triglyceride, Cetyl Alcohol, Oryza Sativa (Rice) Bran Oil, Hydrolyzed Rice Protein, Argania Spinosa Kernel Oil, Malva Sylvestris (Mallow) Extract, Althaea Officinalis Root Extract, Glycerin, Sodium Benzoate, Lactic Acid, Sodium Dehydroacetate, Hexyl Cinnamal, Benzyl Alcohol, Coumarin, Linalool, Parfum [fragrance].',
        '38.png'),
       (39, 'ISANA Silky Gloss - odżywka do włosów suchych',
        'Aqua, Cetearyl Alcohol, Glyceryl Stearate SE, Propylene Glycol, Stearamidopropyl Dimethylamine, Panthenol, Niacinamide, Behentrimonium Chloride, Hydrolyzed Wheat Protein, Magnolia Liliflora Extract, Nelumbium Speciosum Extract, Dipropylene Glycol, Glycerin, Parfum, Phenoxyethanol, Sodium Benzoate, Potassium Sorbate, Citric Acid.',
        '39.png'),
       (40, 'NWEN SLEEPING BEAUTY - maska nocna do włosów średnioporowatych',
        'Aqua, Cetearyl Alcohol, Macadamia Ternifolia Seed Oil, Behentrimonium Chloride, Ethyl Macadamiate, Prunus Domestica Seed Oil, Hydrogenated Castor Oil/Sebacic Acid Copolymer, Hydroxypropyltrimonium Hydrolyzed Corn Starch, Starch Hydroxypropyltrimonium Chloride, Hydroxypropylgluconamide, Hydrolyzed Corn Starch Gluconate, Cetrimonium Chloride, Spirulina Platensis Extract, Furcellaria Lumbricalis Extract, Glycerin, Tocopherol, Malic Acid, Phenoxyethanol, Benzoic Acid, Dehydroacetic Acid, Parfum, Citral, Geraniol, Hexyl Cinnamal, Limonene, Linalool.',
        '40.png'),
       (41, 'BEAUTE MARRAKECH - naturalna odżywka do włosów z keratyną',
        'Aqua, Cetearyl Alcohol, Butyrospermum Parkii (Shea) Butter, Ceteareth-20, Sesamum Indicum Seed Oil, Glycerin, Hydrolyzed Keratin, Hydrolyzed Wheat Protein, Argania Spinosa Kernel Oil, Cetrimonium Chloride, Polyquaternium-7, Parfum, Xanthan Gum, Dehydroacetic Acid, Benzyl Alcohol, Disodium EDTA, Citric Acid.',
        '41.png'),
       (42, 'EKOS - odżywka aloes masło shea',
        'Aqua, Cetearyl Alcohol, Behenamidopropyl Dimethylamine, Glycerin, Butyrospermum Parkii (Shea Butter) Butter*, Lactic Acid, Heliantus Annuus (Sunflower) Seed Oil*, Aloe Barbadensis Leaf Juice*, Dicaprylyl Ether, Lauryl Alcohol, Parfum (Fragrance), Panthenol, Hydrolyzed Rice Protein, Benzyl Alcohol, Dehydroacetic Acid, Linalool.',
        '42.png'),
       (43, 'EQUILIBRA TRICOLOGICA - maska restrukturyzująca',
        'Aqua, Aloe Barbadensis Leaf Juice, Cetearyl Alcohol, Cocos Nucifera (Coconut) Oil, Triticum Vulgare (Wheat) Germ Oil, Betaine, Argania Spinosa Kernel Oil, Hydrolyzed Rice Protein, Hydrolyzed Hemp Seed Extract, Guar Hydroxypropyltrimonium Chloride, Tocopherol, Sodium Phytate, Acorbyl Palmitate, Lecithin, Hydroxyethylcellulose, Lactic Acid, Citric Acid, Cetrimonium Chloride, Sodium Benzoate, Potassium Sorbate, Ethylhexylglycerin, Phenoxyethanol, Parfum (Fragrance).',
        '43.png'),
       (44, 'ANTHYLLIS - odżywka z ekstraktem z lnu i proteinami ryżu',
        'Aqua, Cetearyl alcohol, Behenamidopropyl dimethylamine, Glycerin, Butyrospermum Parkii (Shea) butter*, Lactic acid, Helianthus annuus (Sunflower) seed oil*, Linum usitatissimum (Linseed) seed extract*, Parfum**, Dicaprylyl ether, Lauryl alcohol, Panthenol, Benzyl alcohol, Hydrolyzed Rice protein, Dehydroacetic acid, Linalool.',
        '44.png'),
       (45, 'FLORA & CURL SWEET HIBISCUS CURL ACTIVATING LOTION - odżywka bez spłukiwania aktywująca skręt',
        'Aqua (Distilled Water), Behentrimonium Methosulfate*, Hydroxypropyltrimonium (Honey), Cocos Nucifera (Coconut) Oil, Cetearyl Alcohol, Butyrospermum Parkii (Shea Butter), Olea Europaea (Olive) Fruit Oil, Cetyl Alcohol, Hydrolyzed Soy Protein, Hibiscus Sabdariffa (Hibiscus) Flower Extract, Nelumbo Nucifera (Lotus) Flower Extract, Ricinus communis (Castor) Seed Oil, Butylene Glycol, Hydroxyethylcellulose*, Arctium Lappa (Burdock) Root Extract, Rosmarinus Officinalis (Rosemary) Leaf Extract, Hydrolyzed Wheat Protein, Calendula Officinalis (Calendula) Extract, Benzyl Alcohol, Panthenol (Pro-Vitamin B5), Potassium Sorbate, Sodium Benzoate, (Tocopherol) Vitamin E, Citric Acid, Citronellol**, Geraniol**, Limonene**, Linalool**, Citral, Natural Aroma***.',
        '45.png'),
       (46, 'AS I AM LONG AND LUXE - odżywka z ekstraktem z granatu',
        'Aqua, Punica Granatum Fruit Juice*, Glycerin, Cetearyl Alcohol, Cetyl Alcohol, Behentrimonium Chloride, Passiflora Edulis Fruit Juice, Hydrolyzed Lupine Protein, Betaine, Punica Granatum Seed Oil*, Linum Usitatissimum (Linseed) Seed Extract*, Cocos Nucifera (Coconut) Oil*, Niacinamide, Phytosterols, Keratin, Hydrolyzed Keratin, Caffeine, Biotin, Serenoa Serrulata Fruit Extract, Trifolium Pratense (Clover) Flower Extract, Equisetum Arvense Extract, Urtica Dioica (Nettle) Extract, Cola Acuminata Seed Extract, Tocopheryl Acetate, Origanum Vulgare Leaf Extract, Piroctone Olamine, Fragrance/Parfum, Sodium Benzoate, Isopropyl Alcohol, Quaternium-80, Propylene Glycol, Ethylhexylglycerin, Stearamidopropyl Dimethylamine, Beta Vulgaris (Beet) Root Extract, Caprylic Acid, Polyacrylamide, Citric Acid, Maltodextrin, Acacia Senegal Gum, Silica, Red 33/CI17200, Benzyl Benzoate, Limonene, Linalool. \r\n[*Certified Organic]',
        '46.png'),
       (47, 'SIELANKA MASKA I ODŻYWKA 2W1 - do włosów zniszczonych',
        'Aqua, Behentrimonium Methosulfate, Cetearyl Alcohol, Glycerin, Prunus Amygdalus Dulcis (Sweet Almond) Oil, Stearamidopropyl Dimethylamine, Hydrolyzed Keratin, Rubus Idaeus (Raspberry) Seed Oil, Helianthus Annuus (Sunflower) Seed Oil, Rubus Idaeus (Raspberry) Fruit Extract, Rubus Fruticosus (Blackberry) Fruit Extract, Fragaria Ananassa (Strawberry) Fruit Extract, BHT, Ascorbyl Palmitate, Allantoin, Panthenol, Triticum Vulgare Germ Extract, Ocimum Basilicum Hairy Root Culture Extract, Raphanus Sativus Extract, Citric Acid, Hydroxyacetophenone, Dehydroacetic Acid, Benzyl Alcohol, Parfum, Cl 16035.',
        '47.png'),
       (48, 'VIANEK - intensywnie wzmacniająca maska z żywokostem',
        'Aqua, Cetyl Alcohol, Prunus Amygdalus Dulcis Oil, Glycerin, Panthenol, Isoamyl Laurate, Isoamyl Cocoate, Hydroxystearic Acid, Symphytum Officinale Root Extract, Aloe Barbadensis Leaf Extract, Hydrolyzed Oats, Tocopheryl Acetate, Hydrolyzed Wheat Protein, Lactic Acid, Cyamopsis Tetragonoloba Gum, Cocamidopropyl Betaine, Coco-glucoside, Glyceryl Oleate, Sodium Benzoate, Pinus Silvestris Oil, Parfum, Hexyl Cinnamal, Limonene, Linalool.',
        '48.png'),
       (49, 'FITOMED ODŻYWKA DO WŁOSÓW PRZETŁUSZCZAJĄCYCH SIĘ - szałwia i rozmaryn',
        'Aqua, Cetearyl Alcohol, Glycerin, Salvia Officinalis Extract, Rosmarinus Officinalis Leaf Extract, Behentrimonium Methosulfate, Tocopheryl Acetate, Panthenol, Citric Acid, Guar Hydroxypropyltrimonium Chloride, Isopropyl Alcohol, Benzyl Alcohol, Biotyn, Ethylhexylglycerin, Parfum.',
        '49.png'),
       (50, 'NOWA KOSMETYKA MASKA DO WŁOSÓW RÓŻĄ I MIODEM PŁYNĄCA',
        'Aqua, Cetearyl Alcohol, Mel, Rosa Canina Fruit Oil, Linum Usistatissimum Seed Oil, Behentrimonium Methosulfate, Oryza Sativa Bran Oil, Squalane, Tocopheryl Acetate, Cyamopsis Tetragonoloba Gum, Benzyl Alcohol, Dehydroacetic Acid, Lactic acid, Citrus Aurantium Dulcis Oil, Limonene*.',
        '50.png'),
       (51, 'RATED GREEN HIBISCUS - kuracja nawilżająca skórę głowy z hibiskusem i miodem',
        'Water, Hibiscus Sabdariffa Flower Water, Cetyl Alcohol, Stearyl Alcohol, Glycerin, Behentrimonium Chloride, Eclipta Prostrata Extract, Melia Azadirachta Leaf Extract, Glycine Soja (Soybean) Seed Extract, Moringa Oleifera Seed Oil, Honey Extract, Cocos Nucifera (Coconut) Oil, Olea Europaea (Olive) Fruit Oil, Simmondsia Chinensis (Jojoba) Seed Oil, Cetyl Esters, Isoamyl Laurate, Cetrimonium Chloride, 1,2-Hexanediol, Butylene Glycol, Pentylene Glycol, Ethylhexyglycerin, Octanediol,  Disodium EDTA, Sodium Benzoate, Potassium Sorbate, Fragrance (Parfum).',
        '51.png'),
       (52, 'L\`BIOTICA BIOVAX - maska do włosów osłabionych',
        'Aqua, Cetyl Alcohol, Glycerin, Cetyl Esters, Quaternium-87, Cetearyl Alcohol, Cetareth-20, Cetrimonium Chloride, Jasminum Officinale (Jasmine) Flower Extract, Cocos Nucifera Oil, Cocos Nucifera Fruit Extract, Hydrolyzed Milk Protein, Lactose, Gluconolactose, Tocopherol, Phenthyl Alcohol, Caprylyl Glycol, Calcium Gluconate, Betaine, Argania Spinosa Kernel Oil, Tiare (Gardenia Tahitensis) Flower Extract, Acrylated Lanolin, Propylene Glycol, Parfum, PEG-60 Hydrogenated Castor Oil, Rosmarinus Officinalis Leaf Extract, Helianthus Annuus Seed Oil, Butylene Glycol, Citric Acid, Benzyl Alcohol, Potassium Sorbate, Sodium Benzoate, Methylchloroisothiazolinone, Methylisothiazolinone, Hexyl Cinnamal, Calcium Aluminum Borosilicate, Silica, Tin Oxide, Titanium Oxide.',
        '52.png'),
       (53, 'ONLYBIO Hair in Balance - proteinowa odżywka do włosów',
        'Aqua, Cetearyl Alcohol, Coco-Caprylate/Caprate, Hydrolyzed Wheat Protein, Behentrimonium Chloride, Wheat Amino Acids, Soy Amino Acids, Arginine HCI, Threonine, Serine, Tocopherol, Cetrimonium Chloride, Citric Acid, Benzyl Alcohol, Benzoic Acid, Guar Hydroxypropyltrimonium Chloride, Sodium Benzoate, Potassium Sorbate, Dehydroacetic Acid, Parfum.',
        '53.png'),
       (54, 'ONLYBIO Hair in Balance - emolientowa odżywka do włosów',
        'Aqua, Cetearyl Alcohol, Butyrospermum Parkii (Shea) Butter, Behentrimonium Chloride, Linum Usitatissimum (Linseed) Seed Oil, Persea Gratissima (Avocado) Oil, Rubus Chamaemorus Fruit Extract, Tocopherol, Helianthus Annuus (Sunflower) Seed Oil, Guar Hydroxypropyltrimonium Chloride, Citric Acid, Cetrimonium Chloride, Benzyl Alcohol, Benzoic Acid, Dehydroacetic Acid, Parfum, Citronellol, Geraniol.',
        '54.png'),
       (55, 'ONLYBIO Hair in Balance - humektantowa odżywka do włosów',
        'Aqua, Cetearyl Alcohol, Caprylic/Capric Triglyceride, Behentrimonium Chloride, Betaine, Sodium PCA, Aloe Barbadensis Leaf Juice, Lactic Acid, Citrus Aurantium Dulcis Fruit Water, Tocopherol, Guar Hydroxypropyltrimonium Chloride, Citric Acid, Propanediol, Cetrimonium Chloride, Benzyl Alcohol, Benzoic Acid, Dehydroacetic Acid, Potassium Sorbate, Sodium Benzoate, Parfum, Linalool.',
        '55.png'),
       (56, 'STARS FROM THE STARS - proteinowa odżywka do włosów',
        'Aqua, Cetearyl Alcohol, Coco-Caprylate/Caprate, Behentrimonium Chloride, Moonstone Extract, Wheat Amino Acids, Soy Amino Acids, Arginine HCI, Threonine, Serine, Hydrolyzed Rice Protein, Hydrolysed Oats, Guar Hydroxypropyltrimonium Chloride, Citric Acid, Tocopherol, Glycerin, Cetrimonium Chloride, Sodium Benzoate, Potassium Sorbate, Benzyl Alcohol, Benzoic Acid, Dehydroacetic Acid, Parfum, Hexyl Cinnamal, Benzyl Salicylate, Geraniol, Limonene.',
        '56.png'),
       (57, 'ISANA PROFESSIONAL - odżywka do włosów zmęczonych i suchych',
        'Aqua, Cetearyl Alcohol, Propylene Glycol, Quaternium 87, Hydroxyethylcellulose, Behentrimonium Chloride, Distearoylethyl Hydroxyethylmonium Methosulfate, Argania Spinosa Kernel Oil, Prunus Domestica Seed Oil, Panthenol, Parfum, Stearamidopropyl Dimethylamine, Citric Acid, benzyl Salicylate, benzyl Alcohol, Limonene, Isopropyl Alcohol, Phenoxyethanol, Benzoic Acid, Dehydroacetic Acid.',
        '57.png'),
       (58, 'NATURALME - maska do miodowania włosów',
        'Prunus Amygdalus Dulcis Oil, Helianthus Annuus Seed Oil, Macadamia Ternifolia Seed Oil, Vitis Vinifera Seed Oil, Aronia Melanocarpa Seed Oil, Honey Extract, Tocopheryl Acetate, Parfum.',
        '58.png'),
       (59, 'O\`HERBAL - odżywka do włosów suchych i zniszczonych',
        'Aqua, Cetearyl Alcohol, Behenemidopropyl Dimethylamine, PPG-3 Caprylyl Ether, Panthenol, Lactic Acid, Linum Usitatissimum Seed Extract*, Olea Europaea Fruit Oil*, Hydrolyzed Milk Protein, Triceteareth-4 Phosphate, Caprylic/ Capric Triglyceride*, Disodium EDTA, Glycerin*, Parfum, Diazolidinyl Urea, Sodium Benzoate, Potassium Sorbate, Phenoxyethanol, Ethylhexylglycerin, Coumarin.',
        '59.png'),
       (60, 'ISANA - odżywka do włosów długich, zniszczonych i łamliwych',
        'Aqua, Cetearyl Alcohol, Penthanol, Caffeine, Niacinamide, Ricinus Communis Seed Oil, Parfum, Isopropyl Myristate, Behentrimonium Chloride, Distearoylethyl Hydroxyethylmonium Methosulfate, Cetrimonium Chloride, Hydrolyzed Keratin, Isopropyl Alcohol, Sodium Benzoate, Linalool, Citric Acid, Pentaerythrityl Tetra-Di-T-Butyl Hydroxyhydrocinnamate.',
        '60.png'),
       (61, 'ISANA - odżywka do włosów, regeneracja i wzmocnienie',
        'Aqua, Cetearyl Alcohol, Propylene Glycol, Behentrimonium Chloride, Glyceryl Stearate, Laurdimonium Hydroxypropyl Hydrolyzed Keratin, Keratin, Hydrolyzed Keratin, Distearoylethyl Hydroxyethylmonium Methosulfate, Butyrospermum Parkii Butter, Panthenol, Stearamidopropyl Dimethylamine, Isopropyl Alcohol, Sclerocarya Birrea Seed Oil, Quaternium-87, Citric Acid, Parfum, Phenoxyethanol, Benzoic Acid, Dehydroacetic Acid.',
        '61.png'),
       (62, 'OGX brazylijska keratyna - odżywka wygładzająca do włosów z brazylijską keratyną',
        'Aqua, Cetearyl Alcohol, Cetyl Alcohol, Behentrimonium Chloride, Glycerin, Aloe Barbadensis Leaf Juice, Persea Gratissima (Avocado) Oil, Theobroma Cacao (Cocoa) Seed Butter, Hydrolyzed Keratin, Cocos Nucifera (Coconut) Oil, Glycol Stearate, Glycol Distearate, Ceteareth-20, Isopropyl Alcohol, Dimethicone, Cyclotetrasiloxane, Citric Acid, Cyclopentasiloxane, Panthenol, Tetrasodium EDTA, DMDM Hydantoin, Methylchloroisothiazolinone, Methylisothiazolinone, Magnesium Nitrate, Magnesium Chloride, Parfum (Fragrance), CI 16035 (Red 40), CI 19140 (Yellow 5), CI 42090 (Blue 1).',
        '62.png'),
       (63, 'KALLOS KERATIN - odbudowująca maska do włosów suchych i zniszczonych',
        'Aqua, Cetearyl Alcohol, Cetrimonium Chloride, Citric Acid, Propylene Glycol, Hydrolized Milk Protein, Hydrolized Keratin, Cyclopentasilioxane, Dimenthiconol, Parfum, Benzyl Alcohol, Methylchloroisothiazolinone, Methylisothiazolinone.',
        '63.png'),
       (64, 'ANWEN PROTEINOWA ORCHIDEA - \r\nodżywka do włosów o wysokiej porowatości',
        'Aqua, Cetearyl Alcohol, Behentrimonium Chloride, PPG-3 Benzyl Ether Myristate, Hydrolyzed Pea Protein, Keratin, Hydrolyzed Keratin, Collagen, Hydrolyzed Elastin, Cetrimonium Chloride, Starch Hydroxypropyltrimonium Chloride, Phenoxyethanol, Benzoic Acid, Dehydroacetic Acid, Parfum, Benzyl Salicylate, Coumarin, Limonene, Geraniol, Linalool, Hexyl Cinnamal.',
        '64.png'),
       (65, 'NACOMI - odżywka do włosów z olejem awokado',
        'Aqua, Persea Gratissima Oil, Glycerin, Panthenol, Cetearyl Alcohol, Ceteareth-25, Cetrimonium Chloride, Benzyl Alcohol, Parfum, Hydrolyzed Keratin, Lauryl Alcohol, Laureth-3 Phosphate, Peg-40 Hydrogenated Castor Oil, Dehydroacetic Acid, Leuconostoc/Radish Root Ferment Filtrate.',
        '65.png'),
       (66, 'AS I AM MOISTURE MILK - odżywka bez spłukiwania',
        'Aqua, Glycine Soja (Soybean) Oil, Prunus Amygdalus Dulcis (Sweet Almond) Oil, Theobroma Cacao (Cocoa) Seed Butter, Butyrospermum Parkii (Shea) Butter, Cetearyl Alcohol, Prunus Armeniaca (Apricot) Kernel Oil, Betaine, Simmondsia Chinensis (Jojoba) Seed Oil, Triticum Vulgare (Wheat) Germ Oil, Beta Vulgaris (Beet) Root Extract, Beeswax/Cera Alba/Cire d’abeille, Polyacrylamide, C13-14 Isoparaffin, Laureth-7, Tocopheryl Linoleate, BHT, Ascorbic Acid, Sodium Bicarbonate, Potassium Sorbate, Phenoxyethanol, Caprylyl Glycol, Xanthan Gum, Fragrance/Parfum (Anise Alcohol, Coumarin, Limonene), Cetyl Alcohol, Polysorbate 60, PEG-75 Lanolin, Laureth-9.',
        '66.png'),
       (67, 'AVALON ORGANICS - wzmacniająca odżywka z miętą pieprzową',
        'Water, Aloe Barbadensis Leaf Juice, Brassica Alcohol, Glycerin, Cocos Nucifera (Coconut) Oil, Capryloyl Glycerin/Sebacic Acid Copolymer, Diheptyl Succinate, Brassicyl Isoleucinate Esylate, Canarium Luzonicum Gum Nonvolatiles, Cedrus Atlantica Bark Oil, Citrus Aurantium Dulcis (Orange) Peel Oil, Geranium Maculatum Oil, Mentha Arvensis Leaf Oil, Mentha Piperita (Peppermint) Oil, Calendula Officinalis Flower Extract, Chamomilla Recutita (Matricaria) Flower Extract, Chenopodium Quinoa Seed, Mentha Piperita (Peppermint) Leaf Extract, MelTocopheryl Acetate, Alcohol, Arachidyl Alcohol, Arginine, Behenyl Alcohol, Calcium Gluconate, Glyceryl Stearate, Stearyl Alcohol, Gluconolactone, Sodium Benzoate, Citronellol, Limonene, Linalool.',
        '67.png'),
       (68, 'BIOELIXIRE ISTOTA NATURY - wegańska odżywka proteinowa',
        'Aqua, Stearamidopropyl Dimethylamine, Cetyl Alcohol, Myristyl Alcohol, Lactic Acid, Hydrolyzed Corn Protein, Hydrolyzed Wheat Protein, Hydrolyzed Soy Protein, Hydrolyzed Oat Protein, Hydrolyzed Rice Protein, Leuconostoc/radish Root Ferment Filtrate, Panthenol, Tocopherol, Betaine, Lecithin, Ascorbyl Palmitate, Guar Hydroxypropyltrimonium Chloride, Sodium Benzoate, Sodium Dehydroacetate, Parfum (Fragrance).',
        '68.png'),
       (69, 'BIOELIXIRE ISTOTA NATURY - wegańska odżywka humektantowa',
        'Aqua, Hamamelis Virginiana Leaf Water (Hamamelis Virginiana (Witch Hazel) Leaf Water), Stearamidopropyl Dimethylamine, Cetyl Alcohol, Myristyl Alcohol, Lactic Acid, Aloe Barbadensis Leaf Juice*, Panthenol, Betaine, Urea, Glycerin, Alanine, Creatine, Glycine, Saccharide Hydrolysate, Magnesium Aspartate, Achillea Millefolium Extract*, Calendula Officinalis Flower Extract*, Tocopherol, Lecithin, Ascorbyl Palmitate, Sodium Benzoate, Sodium Dehydroacetate, Parfum (Fragrance).',
        '69.png'),
       (70, 'BIOLAVEN - odżywka z olejem z pestek winogron',
        'Aqua, Vitis Vinifera Seed Oil (olej z pestek winogron), Cetearyl Alcohol, Cetyl Alcohol, Glycerin, Persea Gratissima Butter (masło avocado), Stearic Acid, Xylitol, Panthenol, Glyceryl Laurate, Decyl Glucoside, Cocamidopropyl Betaine, Cyamopsis Tetragonoloba Gum, Sodium Alginate, Tocopheryl Acetate, Lactic Acid, Sodium Benzoate, Lavandula Angustifolia Oil (olej lawendowy), Parfum.',
        '70.png'),
       (71, 'BIOVAX 7W1 - ekspresowa odżywka do włosów z keratyną i jedwabiem 7w1',
        'Aqua, Cetyl Alcohol, Glycerin, Cetyl Esters, Behentrimonium Chloride, Stearamidopropyl Dimethylamine, Cetearyl Alcohol, Sorbitol, Ceteareth-20, Simmondsia Chinensis (Jojoba) Seed Oil, Panthenol, Hydrolyzed Silk, Hydrolyzed Keratin, Silk Amino Acids, Lactobacillus Ferment, Parfum, Citric Acid, Benzyl Alcohol, Methylchloroisothiazolinone, Methylisothiazolinone, Phenoxyethanol, Ethylhexylglycerin, Imidazolidinyl Urea, Isopropyl Alcohol, CI 42090.',
        '71.png'),
       (72, 'BIOVAX 7W1 - odżywka do włosów słabych i wypadających 7w1',
        'Aqua*, Cetyl Alcohol, Cetearyl Alcohol, Cetyl Esters, Distearyldimonium Chloride, Glycerin*, Ceteareth-20, Biotin, Aloe Barbadensis Leaf Juice*, Simmondsia Chinensis Seed Oil*, Hydrolyzed Keratin, Panthenol, Sorbitol, Stearamidopropyl Dimethylamine, Quaternium-80, Parfum, Propylene Glycol, Benzyl Alcohol, Methylchloroisothiazolinone, Methylisothiazolinone, Phenoxyethanol, Ethylhexylglycerin, Imidazolidinyl Urea, Sodium Benzoate, Potassium Sorbate, Dextrin, Citric Acid, Ci 19140, Ci 42090. \r\n[* Składniki pochodzenia naturalnego.]',
        '72.png'),
       (73, 'ANWEN NAWILŻAJĄCY BEZ',
        'Aqua, Cetearyl Alcohol, Behentrimonium Chloride, Starch Hydroxypropyltrimonium Chloride, Solanum Tuberosum (Potato) Starch, Allium Cepa Extract, Saccharide Isomerate, Hydroxypropyltrimonium Hyaluronate, Aloe Barbadensis (Aloe Vera) Leaf Juice Powder, Cetrimonium Chloride, Glycerin, Urea, Polysorbate 80, Hydroxypropyl Guar, Citric Acid, Sodium Citrate, Phenoxyethanol, Benzoic Acid, Dehydroacetic Acid, Caprylyl Glycol, Parfum, Amyl Cinnamal, Cinnamyl Alcohol, Hydroxycitronellal.',
        '73.png'),
       (74, 'NATURE BOX AVOCADO',
        'Aqua, Cetearyl Alcohol, Glycerin, Distearoylethyl Dimonium Chloride, Coco-Caprylate, Sorbitan Caprylate, Guar Hydroxypropyltrimonium Chloride, Persea Gratissima (Avocado) Oil, Benzyl Alcohol, Betaine, Arachidyl Alcohol, Parfum (Fragrance), Behenyl Alcohol, Arachidyl Glucoside, Dehydroacetic Acid, Limonene, Citric Acid, Sodium Hydroxide, Linalool.',
        '74.png'),
       (75, 'BYDGOSKA WYTWÓRNIA MYDŁA ODŻYWKA W KOSTCE - nawilżenie i miękkość',
        'Behentrimonium methosulfate, Cetyl alcohol, Butylene glycol, Theobroma cacao butter, Prunus amygdalus Dulcis oil, Hydrogenated vegetable oil, Citrus grandis oil, Panthenol, Hydrolyzed silk, Sclerocarya birrea, Citrullus vulgaris (Watermelon) seed oil, Crambe abyssinica seed oil, Ricinus communis oil, Cocomidopropyl betaine, Hydroxypropyltrimonium Honey, Leuconostoc/Radish Root Ferment Filtrate, Limonene*, Myrcene*, Citral*. \r\n[* Alergeny potencjalnie występujące w olejku zapachowym]',
        '75.png'),
       (76, 'CURLS BLUEBERRY BLISS REPARATIVE HAIR MASK - maska regenerująca',
        'Purified Water, Glycine Soja (Soybean) Oil, Octyl Palmitate, Cetearyl Alcohol, Behentrimonium Methosulfate, Glyceryl Stearate, Behentrimonium Chloride, Polysorbate 60, Cetyl Alcohol, Certified Organic Blueberry Fruit Extract, Certified Organic Anthemis Nobilis (Chamomile) Flower Extract, Certified Organic Hydrolyzed Soy Protein, Certified Organic Coconut Oil, Certified Organic Aloe Barbadensis Leaf Juice, Vegetable Glycerin, Certified Organic Caprylic/Capric Triglyceride, Certified Organic Panthenol, Polysorbate 20, Phenoxyethanol, Caprylyl Glycol, Fragrance.',
        '76.png'),
       (77, 'E-FIORE - maska do włosów kakaowa + mocznik',
        'Aqua, Cetyl Alcohol, Behentrimonium Chloride, Cocamidopropyl Betaine, Theobroma Cacao (Cocoa) Seed Butter, Urea, Vitis Vinifera (Grape) Seed Oil, Glycerin, Cocos Nucifera (Coconut) Oil, Lactic Acid, Sorbitan Laurate, Sodium Benzoate, Potassium Sorbate, Aroma, Citrus Sinensis Oil, Limonene, Linalool.',
        '77.png'),
       (78, 'E-FIORE - maska do włosów kokosowa + masło shea i olejki',
        'Aqua, Cetyl Alcohol, Behentrimonium Chloride, Cocamidopropyl Betaine, Cocos Nucifera (Coconut) Oil, Macadamia Ternifolia Seed Oil, Argania Spinosa Kernel Oil, Simmondsia Chinensis (Jojoba) Seed Oil, Ricinus Communis Seed Oil, Glycerin, Panthenol, Sorbitan Laurate, Sodium Benzoate, Potassium Sorbate, Aroma.',
        '78.png'),
       (79, 'CANTU FLAXSEED LEAVE-IN OR RINSE OUT CONDITIONER – odżywka PEH z olejem lnianym',
        'Aqua, Cetearyl Alcohol, Linum Usitatissimum (Linseed) Seed Oil, Cetyl Alcohol, Glycerin, Glycine Soja (Soybean) Seed Oil, Distearoylethyl Dimonium Chloride, Glycol Stearate, Stearamidopropyl Dimethylamine, Butyrospermum Parkii (Shea) Butter, Diheptyl Succinate, Capryloyl Glycerin/Sebacic Acid Copolymer, Olea Europaea (Olive) Fruit Oil, Silk Amino Acids, Honey, Althaeae Officinalis Root, Tocopherol Acetate (Vitamin E), Phenoxyethanol, Polyquaternium-10, Ethylhexylglycerin, Sodium Chloride, Sodium Phytate, Citric Acid, Fragrance (Parfum).',
        '79.png'),
       (80, 'BABUSZKA AGAFIA MASKA ŁOPIANOWA – wzmocnienie i porost włosów',
        'Aqua, Cetearyl Alcohol, Cetrimonium Chloride, Avena Sativa (Oat) Bran Extract, Betula Alba Juice, Salvia Officinalis (Sage) Leaf Extract, Rubus Chamaemorus (Cloudberry) Fruit Extract, Rhodiola Rosea Root Extract, Arctium Lappa (Burdock) Oil, Ribes Nigrum Seed Oil, Linum Usitatissimum (Linseed) Seed Oil, Pyridoxine HCL, Panthenol, Niacinamide, Ceteareth-20, Guar Hydroxypropyltrimonium Chloride, Citric Acid, Parfum, Benzyl Alcohol, Methylchloroisothiazolinone, Methylisothiazolinone, CI 16255, CI 15985, CI 19140, CI 42090, CI 14720, Hexyl Cinnamal, Citronellol, Buthylphenyl Methylpropional.',
        '80.png'),
       (81, 'BABUSZKA AGAFIA BALSAM CEDROWY – do włosów cienkich i skłonnych do obciążeń',
        'Aqua, Cetearyl Alcohol, Cetrimonium Chloride, Betula Alba Juice, Potentilla Fruticosa Extract, Linum Usitatissimum (Linseed) Seed Oil, Pinus Siberica Cone Oil, Guar Hydroxypropyltrimonium Chloride, Ceteareth-20, Tocopheryl Acetate, Citric Acid, Parfum, Methylchloroisothiazolinone, Methylisothiazolinone, caramel.',
        '81.png'),
       (82, 'VIS PLANTIS SO!FLOW – odżywcza maska do włosów kręconych',
        'Aqua, Cetearyl Alcohol, Glycerin, Behenamidopropyl Dimethylamine, Bis-Cetearyl Amodimethicone, Prunus Amygdalus Dulcis (Sweet Almond) Oil, Citrus Junos (Yuzu) Fruit Extract, Astragalus Membranaceus Root Extract, Linum Usitatissimum (Linseed) Seed Oil, Butyrospermum Parkii (Shea) Butter, Hydrolyzed Jojoba Esters, Inulin, Behentrimonium Chloride, Undecane, Tridecane, Cetrimonium Chloride, Isopropyl alcohol, Butylene Glycol, Tocopherol, Lactic Acid, Parfum, Sodium Benzoate, Potassium Sorbate, Hexyl Cinnamal, Limonene, CI 42090, CI 19140.',
        '82.png'),
       (83, 'DNC HAIR VOLUME - nawilżająca odżywka do włosów PEH dodająca objętości',
        'Aqua, Aloe Barbadensis (Aloe Vera) Leaf Juice, Lavandula Angustifolia (Lavender) Flower Extract, Trigonella Foenum-Graecum (Fenugreek) Seed Extract, Arctium Lappa (Burdock) Root Extract, Cucumis Sativus (Cucumber) Fruit Water, Cetearyl Alcohol, Polyquaternium-22, Cocos Nucifera (Coconut) Oil, Leuconostoc/Radish Root Ferment Filtrate, Cocodimonium Hydroxypropyl Hydrolyzed Wheat Protein, Citrus Aurentium Dulcis (Orange) Peel Extract, Glycerin, Lavandula Officinalis (Lavender) Flower Essential Oil, Tocopherol Acetate (Vitamin E), Propolis Extract, Hyaluronic Acid, Niacinamide, Amorphophallus Konjac Root Powder, Rosa Canina Seed Oil, Macadamia Ternifolia Seed Oil, Hydrolyzed Elastin, Panthenol, Behenyl Alcohol, Oleyl Erucate.',
        '83.png'),
       (84, 'TRUST MY SISTER MASKA HUMEKTANTOWA – nawilżenie włosów każdej porowatości',
        'Aqua, Aloe Barbadensis (Aloe Vera) Leaf Juice, Cetearyl Alcohol, Glycerin, Isopropyl Myristate, Panthenol, Behentrimonium Chloride, Orbignya Oleifera (Babassu) Seed Oil, Cetrimonium Chloride, Hydrolyzed Hibiscus Esculentus Extract, Linum Usitatissimum (Linseed) Seed Extract, Althaea Officinalis (Marshmallow) Root Extract, Prunus Amygdalus Dulcis Fruit Extract, Hydrolyzed Rice Protein, Hydrolyzed Glycosaminoglycans, Hyaluronic Acid, Polyquternium-6, Citric Acid, Dehydroacetic Acid, Guar Hydroxypropyltrimonium Chloride, Xanthan Gum, Potassium Sorbate, Sodium Benzoate, Parfum, Benzyl Alcohol, Phenoxyethanol.',
        '84.png'),
       (85,
        'NACOMI ALMOND OIL HAIR MASK – maska nawilżająco-regenerująca PEH z olejem ze słodkich migdałów i proteinami ryżu',
        'Aqua, Cetearyl Alcohol, Prunus Amygdalus Dulcis (Sweet Almond) Oil, Glycerin, Cetrimonium Chloride, Behentrimonium Chloride, Panthenol, Sorbitol, Benzyl Alcohol, Hydrolyzed Rice Protein, Hydrolyzed Glycosaminoglycans, Parfum, Dehydroacetic Acid, Hyaluronic Acid.',
        '85.png'),
       (86, 'ECOLATIER ORGANIC ALOE VERA – wzmacniająca maska do włosów i skóry głowy',
        'Aqua with infusions of:, Aloe Barbadensis (Aloe Vera) Leaf Juice, Cetearyl Alcohol, Vegetable Glycerin, Persea Gratissima (Avocado) Seed Oil, Cetrimonium Chloride, Hydrolyzed Wheat Protein, Hydrolyzed Rye Protein, Hydrolyzed Oat protein, Niacinamide, Calcium Pantothenate, Sodium Ascorbyl Phosphate, Tocopheryl Acetate, Pyridoxine HCL, Parfum, Benzyl Alcohol, Benzoic Acid, Dehydroacetic Acid, Sodium Benzoate, Potassium Sorbate, Citric Acid, Sodium Hydroxide, Maltodextrin, Sodium Starch Octenylsuccinate, Silica.',
        '86.png'),
       (87, 'CAFE MIMI PROFESSIONAL PROTEINS HAIR MASK – regenerująca maska z malwą, bambusem i lnem',
        'Aqua, Malva Sylvestris (Mallow) Flower Water, Cetearyl Alcohol, Vegetable Glycerin, Linum Usitatissimum (Linseed) Seed Extract, Bambusa Vulgaris Leaf/Stem Extract, Caprylic/Capric Triglyceride, Cocos Nucifera (Coconut) Oil, Hydrolyzed Wheat Protein, Hydrolyzed Rye Protein, Hydrolyzed Oat protein, Behentrimonium Chloride, Hydroxyethylcellulose, Panthenol, Hydroxypropyl Guar, Hydroxypropyltrimonium Chloride, Silicone Quaternium-18, Trideceth-6, Trideceth-12, Polyquaternium-10, Perfume, Benzyl Alcohol, Benzoic Acid, Dehydroacetic Acid, Potassium Sorbate, Sodium Benzoate, Citric Acid, Hexyl Cinnamal, Benzyl salicylate, Limonene, Linalool, Citronellol, Coumarin.',
        '87.png'),
       (88, 'CAFE MIMI KERATIN HAIR MASK – proteinowa maska do włosów',
        'Aqua, Butyrospermum Parkii (Shea) Butter, Hydrolyzed Keratin, Hydrolyzed Wheat Protein, Hydrolyzed Rye Protein, Hydrolyzed Oat protein, Vegetable Glycerin, Cetearyl Alcohol, Behentrimonium Chloride, Caprylic/Capric Triglyceride, Cetrimonium Chloride, Benzyl Alcohol, Ethylhexylglycerin, Perfume, Cyclopentasiloxane, Dimethiconol, Hydroxyethylcellulose, Panthenol, Dipropylene Glycol, Polysilicone-29, Silk Amino Acids, Hydroxypropyl Guar, Hydroxypropyl Guar Hydroxypropyltrimonium Chloride, Citric Acid.',
        '88.png'),
       (89, 'ECOLATIER URBAN NOURISHING – odżywczy balsam do włosów suchych',
        'Aqua with infusions of:, Malva Sylvestris (Mallow) Flower Extract, Persea Gratissima Fruit Extract, Moringa Oleifera (Moringa Tree) Leaf Extract, Cetearyl Alcohol, Butyrospermum Parkii (Shea) Butter, Caprylic/Capric Triglyceride, Vegetable Glycerin, Persea Gratissima (Avocado) Seed Oil, Behentrimonium Chloride, Inulin, Panthenol, Niacinamide, Calcium Pantothenate, Sodium Ascorbyl Phosphate, Tocopheryl Acetate, Pyridoxine HCL, Hydrolyzed Wheat Protein, Hydrolyzed Rye Protein, Hydrolyzed Oat protein, Hydroxyethylcellulose\r\nMaltodextrin, Sodium Starch Octenylsuccinate, Silica, Hydroxypropyl Guar, Hydroxypropyltrimonium Chloride, Propanediol, Citric Acid, Croton Lechleri Resin Extract T (Dragon\`s Blood), Parfum, Dehydroacetic Acid, Benzoic Acid, Benzyl Alcohol, Potassium Sorbate, Sodium Benzoate, Geraniol, Citronellol, Limonene.',
        '89.png'),
       (90, 'O’HERBAL VOLUME BOOST FOR FINE HAIR – maska zwiększająca objętość cienkich włosów',
        'Aqua, Cetearyl Alcohol, Behentrimonium Chloride, Pvp, Lactic Acid, Ppg-3 Caprylyl Ether, Hydrolyzed Milk Protein, Hydrolyzed Keratin, Arnica Montana (Mountain Arnica) Flower Extract, triceteareth-4 phosphate, Caprylic/Capric Triglyceride, Glycerin, Disodium Edta, Parfum, Sodium Benzoate, Phenoxyethanol, Potassium Sorbate, Ethylhexylglycerin.',
        '90.png'),
       (91, 'FITOKOSMETIK ŁOPIANOWY – wzmacniający balsam na porost włosów',
        'Aqua, Sapindus Mukurossi Peel Floral Water, Arctium Lappa (Burdock) Root Extract, Panax Ginseng Extract, Lavandula Angustifolia (Lavender) Flower Extract, Cedrus Deodara Oil, Glycerine, Behenamidopropyl Dimethylamine, Glyceryl Stearate SE, Lecithin, Hydrolyzed Milk Protein, Parfum, Lactic Acid, Benzoic Acid, Sorbic Acid, Dehydroacetic Acid, Benzyl Alcohol.',
        '91.png'),
       (92, 'FITOKOSMETIK FITNESS MODEL NATYCHMIASTOWA REGENERACJA – maska do włosów zniszczonych',
        'Aqua, Prunus Amygdalus Dulcis (Sweet Almond) Oil, Olea Europaea (Olive) Fruit Oil, Carthamus Tinctorius Seed Oil, Macadamia Integrifolia Seed Oil, Argania Spinosa Kernel Oil, Simmondsia Chinensis (Jojoba) Seed Oil, Pinus Sibirica Seed Oil, Aloe Barbadensis (Aloe Vera) Leaf Extract, Glycerin, Behenamidopropyl Dimethylamine, Glyceryl Monostearate, Hydrolyzed Keratin, Hydrolyzed Silk, Cysteine, Lysine, Parfum, Lactic Acid, Benzoic Acid, Sorbic Acid, Dehydroacetic Acid, Benzyl Alcohol, CI 47005.',
        '92.png'),
       (93, 'TRUST MY SISTER WŁOSY NISKOPOROWATE – proteinowa maska do włosów',
        'Aqua, Cetearyl Alcohol, Isopropyl Myristate, Behentrimonium Chloride, Glycerin, Adansonia Digitata (Baobab) Seed Oil, Cetrimonium Chloride, Hydrolyzed Keratin, Hydrolyzed Rice Protein, Hydrolyzed Silk, HYDROLYZED ADANSONIA DIGITATA SEED EXTRACT (BAOBAB EXTRACT), Leuconostoc/Radish Root Ferment Filtrate, Polyquaternium-6, Guar Hydroxypropyltrimonium Chloride, Dehydroacetic Acid, Citric Acid, Parfum, Potassium Sorbate, Sodium Benzoate, Benzyl Alcohol.',
        '93.png');
INSERT INTO products (product_id, name, description, img_url)
VALUES (94, 'ECO LABORATORIE DOGŁĘBNA ODNOWA – regenerująca maska PEH z różą i jedwabiem',
        'Aqua, Rosa Canina Petal Floral Water, Simmondsia Chinensis (Jojoba) Seed Oil, Camelina Sativa Seed Oil, Bambusa Erudinacea Leaf Extract, Saccharomyces Cerevisiae (Yeast) Extract, Cananga Odorata (Ylang Ylang) Flower Extract, Glycerin, Behenamidopropyl Dimethylamine, Glyceryl Monostearate, Hydrolyzed Silk, Macadamia Integrifolia Seed Oil, Glyceryl Stearate SE, Borago Officinalis Seed Oil, Perfume, Lactic Acid, Benzoic Acid, Sorbic Acid, Dehydroacetic Acid.',
        '94.png'),
       (95, 'FITOKOSMETIK FITNESS MODEL 3D JEDWABNY BLASK – maska do włosów farbowanych',
        'Aqua, Hippophae Rhamnoides Water, Prunus Amygdalus Dulcis (Sweet Almond) Oil, Simmondsia Chinensis (Jojoba) Seed Oil, Tilia Cordata Flower Extract, Citrus Limon Juice, Glycerin, Behenamidopropyl Dimethylamine, Glyceryl Monostearate, Hydrolyzed Silk, Parfum, PHOSPHOLIPIDS, Arginine, Glycine, Proline, Sphingolipids, Lactic Acid, Benzoic Acid, Sorbic Acid, Dehydroacetic Acid, Benzyl Alcohol, CI 47005.',
        '95.png');

-- --------------------------------------------------------

--
-- Table structure for table product_ingredients
--

CREATE TABLE product_ingredients
(
    id            SERIAL PRIMARY KEY,
    product_id    INTEGER REFERENCES products,
    ingredient_id INTEGER REFERENCES ingredients
);

--
-- Dumping data for table product_ingredients
--

INSERT INTO product_ingredients (id, product_id, ingredient_id)
VALUES (1, 1, 1),
       (2, 1, 2),
       (3, 2, 3),
       (4, 3, 1),
       (5, 3, 3),
       (6, 4, 4);

INSERT INTO product_ingredients (product_id, ingredient_id)
SELECT products.product_id, ingredients.ingredient_id FROM products
    INNER JOIN ingredients ON products.description LIKE '%' || ingredients.name || '%'

"Butyrospermum Parkii Butter/Shea Butter"
"Butyrospermum Parkii Butter, Panthenol, ASDASDASD" <- "Shea Butter" or "Butyrospermum Parkii Butter"