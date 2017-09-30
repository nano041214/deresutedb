# クラス設計

Idol class

```
id: int
name: string
yomigana: string
image: string
```

Dress class

```
id: int
idol_id: int
image: string
```

Color class
32 種類ぐらいを想定
大まかに 8 の色があり、そこから細分化

```
id: int
dress_id: int
rgb: rgb
parent_color: string
```

Taste class

```
id: int
dress_id: int
title: string
```

Song class

```
id: int
title: string
idols: Array<Idol>
image: string
```

Idol has_many Dress
Dress has_many color
Dress has_many Taste

Song has_many Idol
Song has_many Color

クッキーで管理
User class

```
idols: Array<Dress>
```
