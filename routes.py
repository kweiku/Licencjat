from http.client import BAD_REQUEST

import lorem
from flask import Blueprint, render_template, request, abort
from sqlalchemy import or_, literal

from config import ROWS_PER_PAGE, DEBUG
from db.model import Products, Ingredients

root = Blueprint('root', __name__, template_folder='templates')
products = Blueprint('products', __name__, template_folder='templates')
ingredients = Blueprint('ingredients', __name__, template_folder='templates')


@root.route('/')
def index():
    return render_template('pages/home_page.html')


@root.route('/protein')
def static_protein():
    ingredients: Ingredients = Ingredients.query \
        .filter_by(category_id=1) \
        .all()

    return render_template('pages/static_page.html',
                           name='Proteiny',
                           img_url='proteiny.jpg',
                           content="""
                            <p class="indent-8 text-left">Proteiny są głównym budulcem łodygi włosa, odpowiedzialnym za ich wygląd i kondycję. 
                            Dostarczane podczas pielęgnacji pełnią funkcję „cementu”, który wypełnia ubytki w ich strukturze i 
                            w pewnym stopniu je regeneruje. Proteiny mają różną postać, a od ich rozmiaru zależy to, 
                            jak będą działać: czy na powierzchni włosa, czy też głębiej, w jego wnętrzu. 
                            Proteiny o większych cząsteczkach wypełniają tymczasowo ubytki w łusce włosów i tworzą na ich 
                            powierzchni okluzyjny film, który zapobiega również odparowywaniu wody. Proteiny o mniejszych 
                            cząsteczkach mają zdolność przenikania do wnętrza włosa i względnie trwałego wiązania się z łańcuchami 
                            keratynowymi, dzięki czemu poprawia się wygląd włosów i ich właściwości: wytrzymałość, sztywność, 
                            podatność na skręcanie i układanie. 
                            </p>
                            <br>
                            <p class="text-left">
                            Kiedy włosom brakuje protein, pasma stają się smętne, wiotkie, „bez życia” i niezwykle trudno 
                            je ułożyć, a włosy falowane i kręcone mają osłabiony skręt. Brak im energii i sprężystości. 
                            Im więcej niszczących czynników działa na włosy, tym więcej proteinowego budulca potrzeba,
                            aby ich struktura pozostała niezmieniona. Jeżeli jednak do włosa zostanie dostarczona zbyt 
                            duża ilość protein, nieproporcjonalna do innych dostarczanych mu składników, możemy mówić o 
                            przeproteinowaniu, w czego efekcie pasma stają się szorstkie, sztywne i suche, zaczynają się 
                            puszyć i zamiast zyskać elastyczność – tracą ją i zaczynają się kruszyć i łamać.
                            </p>
                            <br>
                            <a href="http://www.anwen.pl/2018/11/proteiny-czyli-budowa-odbudowa-wlosow.html" 
                            class="font-bold text-beige-300 no-underline hover:underline">Poczytaj więcej o proteinach w pielęgnacji</a>
                        """,
                           ingredients=ingredients)


@root.route('/emollients')
def static_emollients():
    ingredients: Ingredients = Ingredients.query \
        .filter_by(category_id=2) \
        .all()

    return render_template('pages/static_page.html',
                           name='Emolienty',
                           img_url='emolienty.jpg',
                           content="""
                            <p>
                            Emolienty, czyli np. oleje, masła, woski, silikony, tworzą na powierzchni włosów specjalną, 
                            okluzyjną warstwę, która zapobiega nadmiernej utracie wody z ich wnętrza, zabezpiecza przed 
                            wnikaniem szkodliwych substancji z zewnątrz, a także chroni przed uszkodzeniami mechanicznymi,
                            promieniowaniem UV i wysoką temperaturą. Dzięki temu włókna włosów utrzymują odpowiedni 
                            poziom nawilżenia, są wygładzone, bardziej elastyczne i błyszczące. Emolienty możemy
                            podzielić również na grupy ze względu na miejsce oddziaływania. 
                            W zależności od stopnia złożoności struktury chemicznej, 
                            emolienty działają na powierzchni naszych włosów lub mają
                            zdolność do wnikania i penetracji w głąb struktury włosa.
                            </p>
                            <br>
                            <p>
                            Emolienty stanowią bazę naszej pielęgnacji. W razie niedoborów włosy staną się zbyt lekkie,
                            będą się puszyć i elektryzować. Możemy zaobserwować również przesuszanie oraz brak sprężystości.
                            Nie warto jednak przesadzać również i z tymi substancjami aktywnymi.
                            Nadmiar emolientów w pielęgnacji włosów sprawia, że stają się obciążone,
                            zbijają się w nieestetyczne strączki i tracą objętość.
                            </p>
                            <br>
                            <a href="https://www.blondhaircare.com/2013/09/emolienty-w-walce-o-zdrowe-wosy.html" 
                            class="font-bold text-beige-300 no-underline hover:underline">
                            Poczytaj więcej o emolientach w pielęgnacji</a>
                           """,
                           ingredients=ingredients)


@root.route('/humectants')
def static_humectants():
    ingredients: Ingredients = Ingredients.query \
        .filter_by(category_id=3) \
        .all()

    return render_template('pages/static_page.html',
                           name='Humektanty',
                           img_url='humektanty.jpg',
                           content="""
                           <p>
                           Humektanty to nic innego jak substancje odpowiadające za nawilżenie naszych włosów. 
                           Dzieje się tak za sprawą ich zdolności do wiązania wody i absorbowania jej z otoczenia. 
                           Kluczową cechą humektantów jest higroskopijność, czyli zdolność do pochłaniania wilgoci. 
                           Wnętrze zdrowego włosa zawiera około 10% wody. Właśnie taki poziom jest niezbędny dla 
                           utrzymania jego fizjologicznych własności. Elastyczny cement międzykomórkowy, który spaja 
                           komórki budujące łuski włosa z jego warstwą korową, jest współodpowiedzialny za sprężystość 
                           włosów. Dla zachowania swoich własności cement ten musi absorbować wspomnianą ilość wody 
                           i utrzymywać tzw. równowagę wodną. W przeciwnym wypadku włosy zaczną się kruszyć, łamać i 
                           będą szorstkie w dotyku.
                           </p>
                           <br>
                           <p>
                           Gdy włosy pod wpływem zewnętrznych czynników (wysokiej temperatury czy 
                           promieniowania słonecznego), tę wodę tracą, robią się suche, matowe, szorstkie w dotyku 
                           i przypominają tzw. siano. Po dłuższym czasie staną się dodatkowo kruche i łamliwe. 
                           Z drugiej strony, gdy nie zachowamy równowagi i będziemy zbyt często stosować humektanty, 
                           nasze włosy stracą objętość, zrobią się rozciągliwe i pozbawione wigoru. 
                           W przypadku podwyższonej wilgotności otaczającego powietrza, włosy zaczną się 
                           nadmiernie puszyć.
                           </p>
                           <br>
                            <a href="http://www.anwen.pl/2018/10/humektanty-czyli-o-tym-dobrze-nawilzac-wlosy.html" 
                            class="font-bold text-beige-300 no-underline hover:underline">
                            Poczytaj więcej o humektantach w pielęgnacji</a>
                           """,
                           ingredients=ingredients)


@root.route('/reading-ingredients')
def static_reading_ingredients():
    return render_template('pages/static_page.html',
                           img_url='czytamy_sklady.jpg',
                           name='Czytanie składów kosmetyków',
                           content="""
                           <h class="text-md font-semibold py-2" >Najważniejsze pytanie - czym właściwie jest INCI?</h>
                           <br> <br>
                           <p>
                           <a class="font-semibold">INCI</a> (ang. International Nomenclature of Cosmetic Ingredients), 
                           czyli <a class="font-semibold">Międzynarodowe nazewnictwo składników kosmetyków</a> – system nazewnictwa mający na 
                           celu ujednolicenie nazewnictwa składników kosmetyków. Obecnie według prawa Unii 
                           Europejskiej we wszystkich krajach członkowskich produkty kosmetyczne muszą mieć 
                           opis składników. 
                           </p>
                           <br>
                           <p>W systemie INCI stosuje się angielskie nazwy związków chemicznych oraz łacińskie nazwy 
                           roślin. Nazwy składników użytych w kosmetyku umieszcza się w kolejności, 
                           aby na początku znajdowały się substancje użyte w największej ilości, a na 
                           końcu w najmniejszej.
                           </p>
                           <br> 
                           <p>
                           System zobowiązuje, aby każdy kosmetyk posiadał skład kosmetyku na opakowaniu 
                           (gdy opakowanie jest zbyt małe należy zamieścić do niego ulotkę).
                           </p>
                           
                           <br>
                           <p>
                           Dlaczego czytanie składów jest ważne? <br>
                           Dowiedz się tego od Anwen - jednej z prekursorek włosingu w Polsce! <br>
                           <a href="http://www.anwen.pl/2013/07/wrozenie-z-fusow-tj-ze-skadu.html" 
                            class="font-bold text-beige-300 no-underline hover:underline">Anwen o czytaniu składów</a>
                           </p>
                           
                           <br>
                           <p>
                           Aby lepiej nauczyć się czytać składy kosmetyków zajrzyj do Workbooka przygotowanego przez
                            Curly Wurly Sistas! <br>
                           <a href="https://curlywurlysistas.pl/wp-content/uploads/2020/05/Workbook-czytanie-sk%C5%82ad%C3%B3w.pdf" 
                            class="font-bold text-beige-300 no-underline hover:underline">Czytamy składy</a>
                           </p>
                           
                           <br>
                           <p>
                           Chcesz dowiedzieć się więcej o konkretnych składnikach używanych w kosmetykach? 
                           W encyklopedii znajdziesz ich szerszy opis, który zawiera informacje o funkcji w produkcie, 
                           działaniu i bezpieczeństwie! <br>
                           <a href="https://www.kosmopedia.org/encyklopedia/" 
                            class="font-bold text-beige-300 no-underline hover:underline">Kosmopedia</a>
                           </p>
                           
                           <br>
                           <p>
                           Interesują Cię produkty Cruelty Free, czyli takie, które nie są testowane na zwierzętach? 
                           Sprawdź listę polskich marek CF! <br>
                           <a href="https://www.happygreenlife.pl/polskie-marki-cruelty-free/" 
                            class="font-bold text-beige-300 no-underline hover:underline">Produkty CF</a>
                           </p>
                           """)


@root.route('/wlosing')
def static_wlosing():
    return render_template('pages/static_page.html',
                           name='Włosing',
                           img_url='włosing.jpg',
                           file_path='pages_content/wlosing.html')


@root.route('/about')
def static_about():
    return render_template('pages/static_page.html',
                           name='O serwisie',
                           file_path='pages_content/about.html')


@root.route('/search')
def search_page():
    search_term = request.args.get('q')
    page = request.args.get('page', 1, type=int)
    if not search_term:
        abort(BAD_REQUEST)

    _products = Products.query \
        .with_entities(Products.product_id, Products.name, Products.description, literal('Products')) \
        .filter(or_(*[Products.name.ilike('%' + token + '%') for token in search_term.split(' ')]))
    _ingredients = Ingredients.query \
        .with_entities(Ingredients.ingredient_id, Ingredients.name, Ingredients.description, literal('Ingredients')) \
        .filter(or_(*[Ingredients.name.ilike('%' + token + '%') for token in search_term.split(' ')]))

    results = _products.union(_ingredients).paginate(page=page, per_page=ROWS_PER_PAGE)

    return render_template('pages/search_page.html',
                           query=search_term,
                           results=results)


@products.route('/<item_name>', methods=['GET'])
def product_page(item_name):
    product: Products = Products.query \
        .filter_by(product_id=item_name) \
        .first_or_404()

    return render_template('pages/product_page.html',
                           ingredients=product.product_ingredients,
                           product=product)


@ingredients.route('/<item_name>', methods=['GET'])
def ingredients_page(item_name):
    ingredient: Ingredients = Ingredients.query \
        .filter_by(ingredient_id=item_name) \
        .first_or_404()

    return render_template('pages/ingredients_page.html',
                           ingredient=ingredient,
                           products=ingredient.product_ingredients)


@root.errorhandler(404)
@products.errorhandler(404)
@ingredients.errorhandler(404)
def not_found_handler(error):
    print(error)
    return render_template('pages/error_page.html',
                           message='Nie znaleziono strony :/',
                           title='Nie znaleziono')


@root.errorhandler(400)
@products.errorhandler(400)
@ingredients.errorhandler(400)
def bad_req_handler(error):
    print(error)
    return render_template('pages/error_page.html',
                           message='Bad request :/',
                           title='400 bad req')
