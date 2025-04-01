import SwiftUI
import MapKit

struct Location: Decodable, Hashable {
    let nome: String
    let foto: String
    let descricao: String
    let latitude: Double
    let longitude: Double
}

var locations: [Location] = [
    Location(nome: "Rio de Janeiro", foto: "https://wamcomercializacao.com/wp-content/uploads/2022/07/Banner_1-1024x680.jpg", descricao: "O Rio de Janeiro é uma das cidades mais icônicas do Brasil, famosa por sua paisagem deslumbrante, com praias como Copacabana e Ipanema, e monumentos mundialmente conhecidos, como o Cristo Redentor e o Pão de Açúcar. A cidade é um centro cultural vibrante, celebrando o samba, o carnaval e uma vida noturna animada, enquanto mistura influências indígenas, africanas e europeias em sua gastronomia, música e arte. Com um clima tropical e uma combinação única de natureza e urbanização, o Rio de Janeiro oferece uma experiência inesquecível tanto para moradores quanto para turistas.", latitude: -22.9068, longitude: -43.1729),
    
    Location(nome: "São Paulo", foto: "https://images.ctfassets.net/uzue8dgm4ubt/3emHxfHQAWY0VM4KPh3sT1/05b0455ab7f97cd4f4862b0b5b00e52f/SP.jpg?fm=jpg&w=1000&fit=scale", descricao: "São Paulo é a maior cidade do Brasil e uma das mais influentes do mundo, conhecida como o centro financeiro, cultural e gastronômico do país. Localizada no sudeste do Brasil, São Paulo é uma metrópole vibrante e cosmopolita, que abriga uma população diversa e de diferentes origens. A cidade é famosa por seus arranha-céus, sua intensa vida noturna, e sua cena cultural, com museus de renome, como o Museu de Arte de São Paulo (MASP), e teatros de grande importância, como o Theatro Municipal. São Paulo também é um polo gastronômico, com uma vasta oferta de restaurantes que refletem as influências de diversas culturas, incluindo a italiana, japonesa e árabe. Além disso, a cidade é marcada pela sua arquitetura moderna e histórica, e possui bairros como a Avenida Paulista, Liberdade e Vila Madalena, cada um com suas características e atrações únicas. Com um clima subtropical e uma energia constante, São Paulo é uma cidade que nunca dorme, oferecendo uma mistura única de oportunidades culturais e econômicas.", latitude: -23.5505, longitude: -46.6333),
    
    Location(nome: "Salvador", foto: "https://cdn.ibahia.com/img/Facebook/320000/1210x720/Voce-conhece-Salvador-Mapa-mostra-onde-comeca-e-te0032360100202408050941-3.webp?fallback=https%3A%2F%2Fcdn.ibahia.com%2Fimg%2FFacebook%2F320000%2FVoce-conhece-Salvador-Mapa-mostra-onde-comeca-e-te0032360100202408050941.jpg%3Fxid%3D1643923&xid=1643923", descricao: "Salvador é a capital do estado da Bahia, localizada na região nordeste do Brasil. Conhecida por sua rica história, cultura vibrante e belezas naturais, Salvador é um destino turístico popular. A cidade é famosa por seu centro histórico, o Pelourinho, com ruas de paralelepípedos, casarões coloniais e igrejas barrocas, que foram declarados Patrimônio da Humanidade pela UNESCO. Salvador é também o berço do samba de roda e do axé, estilos musicais que fazem parte da identidade cultural da cidade. Sua culinária é rica e diversificada, com destaque para o acarajé e o moqueca. A cidade é famosa ainda pelas suas festas populares, como o Carnaval de Salvador, um dos maiores e mais animados do mundo, atraindo turistas de todo o planeta. Com suas praias deslumbrantes e um clima quente durante todo o ano, Salvador mistura tradição e modernidade, oferecendo uma experiência única e cheia de encanto.", latitude: -12.9714, longitude: -38.5014),
    
    Location(nome: "Fortaleza", foto: "https://turismo.b-cdn.net/wp-content/uploads/2013/01/Fortaleza-a-capital-do-Ceara.webp", descricao: "Fortaleza é a capital do estado do Ceará, localizada na região nordeste do Brasil. Conhecida por suas praias deslumbrantes, como Praia do Futuro, Canoa Quebrada e Jericoacoara, Fortaleza é um destino turístico popular, especialmente para quem busca sol, mar e diversão. A cidade combina belezas naturais com uma rica cultura local, marcada pela música, dança e culinária típicas. O forró e o samba de roda são ritmos tradicionais da cidade, e sua gastronomia é famosa por pratos como a carne de sol, feijão verde e os frutos do mar. Fortaleza também é reconhecida pelo seu patrimônio histórico, com atrações como o Fortaleza de Nossa Senhora da Assunção e a Catedral de Fortaleza, além de ser um importante centro comercial e econômico do nordeste. Com um clima quente durante o ano todo, a cidade oferece uma combinação única de modernidade e tradição, tornando-se um lugar de grande acolhimento para turistas e moradores.", latitude: -3.7172, longitude: -38.5433),
    
    Location(nome: "Buenos Aires", foto: "https://www.viajanet.com.br/blog/wp-content/uploads/2018/07/Buenos-Aires-1.jpg", descricao: "Buenos Aires, a capital da Argentina, é uma cidade vibrante e cosmopolita, conhecida por sua rica herança cultural e arquitetura impressionante. Famosa por seu tango, a cidade oferece uma experiência única, com diversos bairros interessantes, como San Telmo, com suas ruas de paralelepípedos e bares tradicionais, e Palermo, conhecido por seus parques e restaurantes modernos. Buenos Aires também é um importante centro de arte e teatro, com destaque para o Teatro Colón e os Museus de Arte Latinoamericana. Sua gastronomia, baseada na carne bovina e no famoso churrasco argentino, é um convite para os amantes da culinária. A cidade também é marcada por uma vida noturna agitada e eventos culturais ao longo de todo o ano, como o Carnaval e o Festival Internacional de Tango. Com um clima temperado e muitas opções de lazer, Buenos Aires é um destino imperdível.", latitude: -34.6037, longitude: -58.3816),
    
    Location(nome: "Berlim", foto: "https://www.passagenspromo.com.br/blog/wp-content/uploads/2019/08/o-que-fazer-em-berlim-740x415.jpeg", descricao: "Berlim, a capital da Alemanha, é uma cidade repleta de história, cultura e inovação. Famosa pelo Portão de Brandemburgo, o Muro de Berlim e diversos museus e galerias de arte, a cidade é um centro cultural e intelectual da Europa. Além de sua importância histórica, Berlim é conhecida por sua vibrante vida noturna e seu estilo alternativo. A cidade também é sede de grandes eventos culturais, como o Festival de Cinema de Berlim. Sua gastronomia reflete a diversidade da cidade, com pratos como o currywurst e o berliner. Com um clima temperado e uma atmosfera única, Berlim é um destino para quem busca cultura, história e modernidade.", latitude: 52.52, longitude: 13.4050),
    
    Location(nome: "Kyoto", foto: "https://content.r9cdn.net/rimg/dimg/38/93/de70f3b4-city-20339-551a6f73.jpg?width=1366&height=768&xhint=1814&yhint=1179&crop=true", descricao: "Kyoto, uma das cidades mais emblemáticas do Japão, é famosa por sua rica história, templos budistas e jardins tranquilos. Antiga capital imperial, Kyoto preserva muitas tradições japonesas e é um destino cultural importante. Com mais de 1.600 templos, como o Kinkaku-ji (Pavilhão Dourado) e o Fushimi Inari Taisha, Kyoto é o lugar perfeito para explorar a espiritualidade japonesa. A cidade também é famosa pelos seus jardins zen, os cerimoniais de chá e a gastronomia, que inclui pratos como kaiseki e yudofu. Kyoto oferece uma experiência única para aqueles que buscam um encontro com a cultura tradicional japonesa.", latitude: 35.0116, longitude: 135.7681),
    
    Location(nome: "Cairo", foto: "https://media.gadventures.com/media-server/dynamic/blogs/posts/G-Adventures/2024/10/Things_to_do_in_Cairo.webp", descricao: "O Cairo, a capital do Egito, é uma das maiores cidades do mundo árabe e um centro histórico e cultural. A cidade é famosa pelas suas pirâmides de Gizé, incluindo a Grande Pirâmide de Quéops, uma das Sete Maravilhas do Mundo Antigo. O Cairo é um destino fascinante, com mercados vibrantes como o Khan El Khalili, onde é possível comprar souvenirs, especiarias e artesanato. Além disso, o Cairo é um centro importante de aprendizado islâmico e cultural, com mesquitas impressionantes, como a Mesquita de Al-Azhar. Sua gastronomia, com pratos como o koshari e o falafel, reflete a rica herança da cidade. Com um clima quente e árido, o Cairo mistura modernidade com tradição, oferecendo aos visitantes uma experiência inesquecível.", latitude: 30.0444, longitude: 31.2357),
    
    Location(nome: "Dubai", foto: "https://www.msccruzeiros.com.br/-/media/global-contents/destinations/ports/emirates/dubai/sailing-forward-2024/port-page/main-porto-1670x870.jpg?bc=transparent&as=1&mh=870&mw=1670&hash=D8EA239A080D158B03DF3EE8D5989801", descricao: "Dubai, nos Emirados Árabes Unidos, é uma cidade futurista, famosa por sua arquitetura moderna, como o Burj Khalifa, o edifício mais alto do mundo, e o luxuoso Burj Al Arab. Dubai é também um centro financeiro global e um destino turístico de luxo, com shopping centers gigantescos, como o Dubai Mall, e atrações icônicas, como o Aquário de Dubai e o Dubai Fountain. A cidade é conhecida por seus hotéis de alto padrão, praias deslumbrantes e eventos internacionais, como o Dubai Shopping Festival. Dubai oferece uma experiência única, com uma mistura de tradição árabe e modernidade, sendo um destino imperdível para quem busca sofisticação e inovação.", latitude: 25.276987, longitude: 55.296249),
    
    Location(nome: "Barcelona", foto: "https://cdn.prod.website-files.com/63b7026306af943f8e01771f/6614377e120492d82a065f48_o%20que%20fazer%20em%20barcelona.webp", descricao: "Barcelona, na Espanha, é uma das cidades mais visitadas da Europa, famosa pela sua arquitetura única, como as obras de Antoni Gaudí, incluindo a Sagrada Família e o Parque Güell. A cidade oferece uma combinação perfeita de história, cultura e vida à beira-mar. Com suas praias, como a Barceloneta, e uma rica herança medieval no Bairro Gótico, Barcelona é um destino vibrante e acolhedor. A gastronomia catalã é deliciosa, com pratos como a paella e os tapas. Além disso, Barcelona é famosa por sua vida noturna agitada e eventos esportivos, especialmente os jogos do FC Barcelona. Com um clima mediterrâneo e uma atmosfera animada, Barcelona é um lugar que encanta os turistas.", latitude: 41.3784, longitude: 2.1925),
    
    Location(nome: "Xangai", foto: "https://abmes.org.br/arquivos/noticias/xangai02.png", descricao: "Xangai é a maior cidade da China e um dos centros econômicos mais importantes do mundo. Famosa por sua impressionante linha do horizonte, com arranha-céus futuristas como o Shanghai Tower, a cidade combina tradição e modernidade de forma única. O Bund, à beira do rio Huangpu, oferece uma vista deslumbrante da arquitetura colonial e dos modernos edifícios de vidro e aço. Xangai também é conhecida por sua culinária, com pratos como o xiaolongbao (dumplings de sopa) e shanghainese noodles. A cidade é um destino animado, com centros comerciais de luxo, museus de arte contemporânea e uma vida noturna vibrante. Xangai é uma metrópole cosmopolita e dinâmica, que atrai turistas de todo o mundo.", latitude: 31.2304, longitude: 121.4737),
    
    Location(nome: "Lyon", foto: "https://brasil.perfil.com/wp-content/uploads/2025/03/Lyon-Franca_1743282076717.jpg", descricao: "Lyon é uma cidade francesa conhecida por sua rica herança histórica e culinária renomada. Localizada na região de Auvergne-Rhône-Alpes, Lyon é famosa pelo seu centro histórico, classificado como Patrimônio Mundial da Humanidade pela UNESCO, e sua cena gastronômica, considerada uma das melhores do mundo. A cidade também é um centro cultural, com uma vibrante cena de teatro e festivais como o Festival das Luzes. Lyon é a terceira maior cidade da França, com um charme único, que mistura tradições antigas e modernidade. Seus bairros encantadores, como o Vieux Lyon, o bairro antigo da cidade, e o Presqu'île, são ótimos para explorar a pé. Lyon também é um destino popular para quem aprecia a boa comida, com restaurantes de renome e especialidades como a quenelle e a salade lyonnaise.", latitude: 45.75, longitude: 4.85),
    
    Location(nome: "Lima", foto: "https://aem-all.accor.com/content/dam/brands/ibh/hubs/americas/latam/2024/2024-02/magazine-ibis/museus-em-lima-2024-1-pontos-turisticos-de-lima-2024-2.jpg", descricao: "Lima é a capital do Peru e uma das maiores cidades da América do Sul. Localizada à beira do Oceano Pacífico, Lima é uma metrópole vibrante, com uma rica história colonial e uma cozinha mundialmente reconhecida. A cidade é famosa por seu centro histórico, com a Plaza Mayor e a Catedral de Lima, além de ser o berço da gastronomia peruana, com pratos como ceviche, lomo saltado e pisco sour. Lima também é conhecida pela sua vida noturna animada e seus bairros modernos, como Miraflores, que oferece uma combinação de lojas, restaurantes e belas vistas para o mar. Além disso, Lima possui uma rica cena cultural, com museus e galerias de arte contemporânea. Com um clima desértico e agradável durante todo o ano, Lima é um destino fascinante para turistas e moradores.", latitude: -12.0464, longitude: -77.0428),
    
    Location(nome: "Amsterdã", foto: "https://uploads.dicasdeamsterda.com.br/sites/6/2016/07/amsterda-em-fevereiro-e1572991483948.png", descricao: "Amsterdã, a capital dos Países Baixos, é uma cidade encantadora, famosa por seus canais pitorescos, museus renomados e atmosfera descontraída. A cidade é um centro cultural importante, com museus de arte mundialmente famosos, como o Rijksmuseum, o Museu Van Gogh e a Casa de Anne Frank. Amsterdã também é conhecida por sua arquitetura única, com casas estreitas ao longo dos canais e pontes históricas. A cidade oferece uma rica vida noturna, com bares e cafés aconchegantes, e é famosa por ser uma cidade liberal, com políticas progressistas e uma atitude aberta em relação à diversidade. Além disso, Amsterdã é um destino perfeito para os amantes da natureza, com seus parques, como o Vondelpark, e sua proximidade com áreas de paisagens deslumbrantes. Com um clima temperado e uma cultura amigável, Amsterdã é um destino que encanta os visitantes.", latitude: 52.3676, longitude: 4.9041)
]



struct ContentView: View {
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: locations[0].latitude, longitude: locations[0].longitude),
            span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    )
    @State private var selecionado: Location = locations[0]
    
    var body: some View {
        NavigationStack {
            ZStack {
                
                Map(position: $position) {
                    ForEach(locations, id: \.self) { location in
                        
                        Annotation(location.nome, coordinate: CLLocationCoordinate2D(
                            latitude: location.latitude,
                            longitude: location.longitude)) {
                                
                                NavigationLink(destination: DetailsView(location: location)) {
                                    Image(systemName: "mappin")
                                        .foregroundStyle(Color.red)
                                        .font(.title)
                                }
                        }
                    }
                }
                .ignoresSafeArea()
                
                VStack {
                    Picker("Selecione um lugar", selection: $selecionado) {
                        ForEach(locations, id: \.self) { local in
                            Text(local.nome)
                                .tag(local)
                                .font(.largeTitle)
                                .bold()
                                .background(Color.black)
                        }
                    }
                    .padding(.horizontal)
                    .accentColor(Color.black)
                    .background(Color.white)
                    .frame(height: 40)
                    .cornerRadius(6)
                    .onChange(of: selecionado) { index in
                        position = MapCameraPosition.region(
                            MKCoordinateRegion(
                                center: CLLocationCoordinate2D(latitude: index.latitude, longitude: index.longitude),
                                span: MKCoordinateSpan(latitudeDelta: 0.175, longitudeDelta: 0.175)
                            )
                        )
                    }
                    Spacer()
                    
                    
                }
            } // ZStack
        }
    }
}

struct DetailsView: View {
    var location: Location
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.8), Color.purple.opacity(0.8)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text(location.nome)
                    .font(.largeTitle)
                    .bold()
                
                Spacer()
                
                AsyncImage(url: URL(string: location.foto)) { index in
                    index.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 320, height: 180)
                .cornerRadius(3)
                .shadow(color: Color.black, radius: 10, x: 10, y: 10)
                
                Spacer()
                
                Text(location.descricao)
                    .padding(.vertical, 30)
                    .bold()
                .multilineTextAlignment(.center)            }
            .padding()
        } //VStack
        
    } //ZStack
}

#Preview {
    ContentView()
}
