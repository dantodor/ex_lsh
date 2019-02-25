lipsum = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sem velit,
suscipit non sem a, dictum euismod odio. Suspendisse at maximus nunc, lacinia
accumsan odio. Fusce ac imperdiet arcu, ut tempor dui. Nam congue magna at
interdum elementum. Sed tempus leo a mollis venenatis. Sed rutrum ornare magna,
nec iaculis urna venenatis condimentum. Sed nec arcu vel libero consectetur
facilisis sed at purus. Curabitur blandit posuere ipsum non vehicula. Morbi
placerat lectus sit amet quam dictum molestie.

Nam eget lacinia neque. Suspendisse consectetur justo congue aliquet vehicula.
Suspendisse id ullamcorper velit. Integer dapibus neque a tellus vulputate, nec
pharetra purus cursus. Sed at est sapien. Aenean tristique, sem a ullamcorper
egestas, felis elit suscipit velit, euismod cursus neque risus id quam. Nunc at
cursus urna, eget imperdiet justo. Suspendisse quis vehicula purus. Etiam eget
mi porttitor, pharetra diam id, tempus nulla.

Suspendisse placerat ante est, lobortis lacinia mauris congue sed. In facilisis
volutpat leo, nec posuere dolor. Aliquam aliquet justo quis arcu sagittis, eu
porttitor turpis sagittis. Quisque id ante eros. Orci varius natoque penatibus
et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque quis
porta velit, et porta odio. Praesent lectus tortor, interdum quis placerat ut,
auctor eget augue. Nam felis turpis, pellentesque sed congue ut, eleifend non
mauris. Duis et risus sem. Phasellus eros magna, vulputate sed accumsan a,
feugiat eu arcu.

Morbi elementum lectus quis aliquet imperdiet. In eget leo pellentesque,
consectetur nunc ut, eleifend orci. Praesent non sapien nulla. Nulla ultricies
sem ac odio elementum, eget efficitur mauris porta. Suspendisse cursus, enim
sed varius sagittis, elit sem tempus lacus, a vehicula elit libero eget arcu.
Proin ac sapien neque. Fusce sodales tortor in turpis hendrerit mollis.
Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac
turpis egestas. Curabitur eget nisi orci.

Vestibulum ullamcorper orci hendrerit, interdum justo et, mollis lectus. In a
sagittis massa, at varius turpis. Duis euismod nisl libero, non malesuada eros
pellentesque aliquet. Praesent malesuada posuere odio. Quisque tristique
aliquam faucibus. Curabitur ultrices ipsum quis quam viverra, at cursus risus
dignissim. Sed maximus enim ante, vel ultricies orci egestas at. Aliquam
maximus, tortor ac consequat bibendum, ligula elit viverra augue, eget auctor
tellus felis vitae mi. Aenean interdum posuere lectus, in convallis leo ornare
id. Ut non ex rutrum metus condimentum bibendum at sed nisi. Morbi efficitur
ipsum tincidunt tempus mattis. Nam mattis varius sapien quis vehicula.
"""

Benchee.run(%{
  "ExLSH" => fn -> ExLSH.lsh(lipsum) end,
  "Simhash" => fn -> Simhash.hash(lipsum) end,
  "SpiritFingers" => fn -> SpiritFingers.SimHash.simhash(lipsum) end
})
