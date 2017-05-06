# What is GitUrl?

It's a tool that allows you to pack Git repository data into single url. For example:

```
% giturl https://github.com/zdharma/giturl -r devel -p lib/coding_functions.cpp

Protocol: https
Site:     github.com
Repo:     zdharma/giturl
Revision: devel
File:     lib/coding_functions.cpp

gitu://ŬṽǚǫoŒẗ6ẏȅcЭÑẩőn4ầŘїệαЃȣϟṈӛŀї

% giturl -d gitu://ŬṽǚǫoŒẗ6ẏȅcЭÑẩőn4ầŘїệαЃȣϟṈӛŀї
Protocol: https
Site:     github.com
Repo:     zdharma/giturl
Revision: devel
File:     lib/coding_functions.cpp
```

This is Zsh implementation. You don't have to use Zsh as your shell, just have it installed,
like Ruby. There is [`C++11` implementation too.](https://github.com/zdharma/cgiturl).

# Characters used in base-1024 encoding

```
0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ
µºÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞßàáãäæçèéêëìíîïðñòóôõöøúûüýþÿĀ
āĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕĖėĘęĚěĜĝĞğĠġĢģĤĥĦħĨĩĪīĬĭĮįİıĲĳĴĵĶķĸĹĺĻļĽľ
ĿŀŁłŃńŅņŇňŉŊŋŌōŎŏŐőŒœŔŕŖŗŘřŚśŜŝŞşŠšŢţŤťŦŧŨũŪūŬŭŮůŰűŲųŴŵŶŷŸŹźŻż
ŽžſƀƁƂƃƄƅƆƇƈƉƊƋƌƍƎƏƐƑƒƓƔƖƗƘƙƚƛƜƝƞƟƠơƤƥƦƧƨƩƪƫƬƭƮƯưƱƲƳƴƵƶƷƸƹƺƻƼƽ
ƾƿǀǁǂǃǍǎǏǐǑǒǓǔǕǖǗǘǙǚǛǜǝǞǟǠǡǢǣǤǥǦǧǨǩǪǫǬǭǮǯǰǱǳǴǵǷǸǹǺǻǼǽǾǿȀȁȂȃȄȅȆ
ȇȈȉȊȋȌȍȎȏȐȑȒȓȔȕȖȗȘșȚțȜȝȞȟȠȡȢȣȤȥȦȧȨȩȪȫȬȭȮȯȰȱȲȳȴȵȶȷȸȹȺȻȼȽȾȿɀɁɂɃɄ
ɅɆɇɈɋɌɍɎɏḀḁḂḃḄḅḆḇḈḉḊḋḌḍḎḏḐḑḒḓḔḕḖḗḘḙḚḛḜḝḞḟḠḡḢḣḤḥḦḧḨḩḪḫḬḭḮḯḰḱḲḳḴ
ḵḶḷḸḹḺḻḼḽḾḿṀṁṂṃṄṅṆṇṈṉṊṋṌṍṎṏṐṑṒṓṔṕṖṗṘṙṚṛṜṝṞṟṠṡṢṣṤṥṦṧṨṩṪṫṬṭṮṯṰṱṲ
ṳṴṵṶṷṸṹṺṻṼṽṾṿẀẁẂẃẄẅẆẇẈẉẊẋẌẍẎẏẐẑẒẓẔẕẖẗẘẙẚẛẜẝẟẠạẢảẤấẦầẨẩẪẫẬậẮắẰằ
ẲẳẴẵẶặẸẹẺẻẼẽẾếỀềỂểỄễỆệỈỉỊịỌọỎỏỐốỒồỔổỖỗỘộỚớỜờỞởỠỡỢợỤụỦủỨứỪừỬửỮữ
ỰựỲỳỴỵỶỷỸỹỻͻͼͽΆΈΑΒΓΔΕΖΗΘΙΚΛΜΝΞΟΠΡΣΤΥΦΧΨΩΫάέήίΰαβγδεζηθικλμνξοπ
ρςστυφχψϋόύώϐϑϒϔϕϖϗϘϙϚϛϜϝϞϟϠϥϧϨϩϫϬϭϮϯϰϱϲϵϷϸϹϻϼϽϾϿЀЁЂЃЄЅІЇЈЉЊЋЌ
ЍЎЏАБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдежзийклмнопрстуфхцчшщъ
ыьэюяѐёђѓєѕіїјљњћќѝўџѡѢѣѥѫѱѲѳѵѷѻѽѿҀҁҋҌҍҎҏҐґҒғҔҕҖҗҘҙҚқҜҝҞҟҡҢңҤҥ
ҩҪҫҬҭҮүҰұҲҳҵҶҷҸҹҺһӀӁӂӃӄӅӆӇӈӉӊӋӌӎӐӑӒӓӔӕӖӗӘәӚӛӜӝӞӟӠӡӢӣӤӥӦӧӨөӪӫӬӭ
ӮӯӰӱӲӳӴӵӶӷӸӹӺӻӼӽӾӿאבגדטךכלםמסעףפץצקרשװ
```
