-module(erlmarkdown_tests).

-include_lib("eunit/include/eunit.hrl").

%% Do not edit this file - it is generated with ../tests/index.html
unit_test() ->
    [
     ?_assertEqual("<p>=></p>", erlmarkdown:conv("=>")),
     ?_assertEqual("<blockquote>\n  <p>=</p>\n</blockquote>", erlmarkdown:conv(">=")),
     ?_assertEqual("<p>=&lt;</p>", erlmarkdown:conv("=<")),
     ?_assertEqual("<p>&lt;=</p>", erlmarkdown:conv("<=")),
     ?_assertEqual("<p>&lt;></p>", erlmarkdown:conv("<>")),
     % ?_assertEqual("<p><flame on>\nblah\n</flame off>\n<bingo>\n<bingo master></p>", erlmarkdown:conv("<flame on>\nblah\n</flame off>\n<bingo>\n<bingo master>")),
     % ?_assertEqual("<p><flame on>\n</flame on></p>", erlmarkdown:conv("<flame on>\n</flame on>")),
     ?_assertEqual("<p><flame on></p>", erlmarkdown:conv("<flame on>")),
     ?_assertEqual("<table>\n<img src=\"http://example.com\">\n</table>", erlmarkdown:conv("<table>\n<img src=\"http://example.com\">\n</table>")),
     % ?_assertEqual("<table>\n<tr>\n<td>\n***FAQ*** - *WTF?* Postal Chess Records is a mash-up between Postal Chess and Chess Records where two Record Selectors slug it out over the interwebs in a sonic-soundclash, duh!\n</td>\n<td>\n<img src=\"http://imgur.com/VmdEL.png\">\n</td>\n</tr>\n</table>", erlmarkdown:conv("<table>\n<tr>\n<td>\n***FAQ*** - *WTF?* Postal Chess Records is a mash-up between Postal Chess and Chess Records where two Record Selectors slug it out over the interwebs in a sonic-soundclash, duh!\n</td>\n<td>\n<img src=\"http://imgur.com/VmdEL.png\">\n</td>\n</tr>\n</table>")),
     % ?_assertEqual("<form action=\"https://checkout.google.com/api/checkout/v2/\ncheckoutForm/Merchant/960226209420618\" id=\"BB_BuyButtonForm\"\nmethod=\"post\" name=\"BB_BuyButtonForm\" target=\"_top\">\n<input name=\"item_name_1\" type=\"hidden\" value=\"Premium\nHypernumbers Account\"/><input name=\"item_description_1\" \ntype=\"hidden\" value=\"Premium Hypernumbers Account\"/>\n<input name=\"item_quantity_1\" type=\"hidden\" value=\"1\"/>\n<input name=\"item_price_1\" type=\"hidden\" value=\"90.0\"/>\n<input name=\"item_currency_1\" type=\"hidden\" value=\"GBP\"/>\n<input name=\"_charset_\" type=\"hidden\" value=\"utf-8\"/>\n<input alt=\"\" src=\"https://checkout.google.com/buttons/buy.gif?\nmerchant_id=960226209420618&amp;w=117&amp;h=48&amp;style=white&amp;\nvariant=text&amp;loc=en_US\" type=\"image\"/></form>", erlmarkdown:conv("<form action=\"https://checkout.google.com/api/checkout/v2/\ncheckoutForm/Merchant/960226209420618\" id=\"BB_BuyButtonForm\"\nmethod=\"post\" name=\"BB_BuyButtonForm\" target=\"_top\">\n<input name=\"item_name_1\" type=\"hidden\" value=\"Premium\nHypernumbers Account\"/><input name=\"item_description_1\" \ntype=\"hidden\" value=\"Premium Hypernumbers Account\"/>\n<input name=\"item_quantity_1\" type=\"hidden\" value=\"1\"/>\n<input name=\"item_price_1\" type=\"hidden\" value=\"90.0\"/>\n<input name=\"item_currency_1\" type=\"hidden\" value=\"GBP\"/>\n<input name=\"_charset_\" type=\"hidden\" value=\"utf-8\"/>\n<input alt=\"\" src=\"https://checkout.google.com/buttons/buy.gif?\nmerchant_id=960226209420618&amp;w=117&amp;h=48&amp;style=white&amp;\nvariant=text&amp;loc=en_US\" type=\"image\"/></form>\n")),
     ?_assertEqual("<h3>\nLets let html through\n</h3>", erlmarkdown:conv("<h3>\nLets let html through\n</h3>")),
     ?_assertEqual("<p>&copy;</p>", erlmarkdown:conv("&copy;")),
     ?_assertEqual("<h3 id='test'>\nLets let html through\n</h3>", erlmarkdown:conv("<h3 id='test'>\nLets let html through\n</h3>")),
     ?_assertEqual("<p><img src=\"_underscore\" alt=\"login\" title=\"\" /></p>", erlmarkdown:conv("![login](_underscore)")),
     ?_assertEqual("<p><a href=\"_underscore\">login</a></p>", erlmarkdown:conv("[login](_underscore)")),
     ?_assertEqual("<ol>\n<li>should be <em>italic</em></li>\n<li>should be <strong>bold</strong></li>\n<li>should be <strong><em>bold italic</em></strong></li>\n</ol>", erlmarkdown:conv("\n 1.   should be *italic*\n 2.  should be **bold**\n 3.  should be ***bold italic***")),
     ?_assertEqual("<ul>\n<li>should be <em>italic</em></li>\n<li>should be <strong>bold</strong></li>\n<li>should be <strong><em>bold italic</em></strong></li>\n</ul>", erlmarkdown:conv("\n - should be *italic*\n - should be **bold**\n - should be ***bold italic***")),
     ?_assertEqual("<p>some stuff <code>yaycode</code> more stuff <code>more code!</code></p>", erlmarkdown:conv("some stuff `yaycode` more stuff `more code!`")),
     ?_assertEqual("<p><a href=\"http://example.com/some/link\"><img src=\"/img/somebutton.png\" alt=\"Button\" title=\"\" /></a></p>", erlmarkdown:conv("[![Button](/img/somebutton.png)](http://example.com/some/link)")),
     ?_assertEqual("<pre><code>alice\nbob\n</code></pre>\n\n<p>chaz</p>", erlmarkdown:conv("    alice\n    bob\nchaz")),
     ?_assertEqual("<blockquote>\n  <p>alice\n  bob\n  chaz</p>\n</blockquote>", erlmarkdown:conv("> alice\n> bob\n> chaz")),
     ?_assertEqual("<ul>\n<li>a</li>\n<li>b</li>\n</ul>", erlmarkdown:conv(" - a\n - b\n")),
     ?_assertEqual("<ol>\n<li>a</li>\n<li>b</li>\n</ol>", erlmarkdown:conv(" 1. a\n 2. b\n")),
     ?_assertEqual("<p>blah <img src=\"http://example.com\" alt=\"blah\" title=\"title\" /> blah</p>", erlmarkdown:conv("blah ![blah][1] blah\n\n\n  [1]: http://example.com (title)")),
     ?_assertEqual("<p>blah <img src=\"http://example.com\" alt=\"blah\" title=\"title\" /> blah</p>", erlmarkdown:conv("blah ![blah][1] blah\n\n\n  [1]: http://example.com \"title\"")),
     ?_assertEqual("<p>blah <img src=\"http://example.com\" alt=\"blah\" title=\"\" /> blah</p>", erlmarkdown:conv("blah ![blah][1] blah\n\n\n  [1]: http://example.com")),
     ?_assertEqual("<p>Now is the winter of <code>our discontent</code> made glorious summer by this Son of York</p>", erlmarkdown:conv("Now is the winter of `our discontent` made glorious summer by this Son of York")),
     ?_assertEqual("<p>blah <a href=\"http://example.com\" title=\"title\">blah</a> blah</p>", erlmarkdown:conv("blah [blah][1] blah\n\n\n  [1]: http://example.com (title)")),
     ?_assertEqual("<p>blah <a href=\"http://example.com\" title=\"title\">blah</a> blah</p>", erlmarkdown:conv("blah [blah][1] blah\n\n\n  [1]: http://example.com \"title\"")),
     ?_assertEqual("<p>blah <a href=\"http://example.com\">blah</a> blah</p>", erlmarkdown:conv("blah [blah][1] blah\n\n\n  [1]: http://example.com")),
     ?_assertEqual("<h2>> blah</h2>", erlmarkdown:conv("> blah\n-------------")),
     ?_assertEqual("", erlmarkdown:conv("  \n")),
     ?_assertEqual("<p><img src=\"http://example.com\" alt=\"alt text\" title=\"\" /></p>", erlmarkdown:conv("![alt text][1]\n\n[1]: http://example.com")),
     ?_assertEqual("<p><img src=\"http://example.com\" alt=\"alt text\" title=\"optional title\" /></p>", erlmarkdown:conv("![alt text][1]\n\n[1]: http://example.com \"optional title\"")),
     ?_assertEqual("<p><a href=\"http://example.com\">link text</a></p>", erlmarkdown:conv("[link text][1]\n\n[1]: http://example.com")),
     ?_assertEqual("<p><a href=\"http://example.com\" title=\"optional title\">link text</a></p>", erlmarkdown:conv("[link text][1]\n\n[1]: http://example.com \"optional title\"")),
     ?_assertEqual("<p>blah</p>\n\n<p>bleh</p>", erlmarkdown:conv("blah\n\n\nbleh")),
     ?_assertEqual("<p><code>&lt;div&gt;blah&lt;/div&gt;</code></p>", erlmarkdown:conv("`<div>blah</div>`")),
     ?_assertEqual("<p>My <a href=\"http://example.com\">link</a> test</p>", erlmarkdown:conv("My [link][id] test\n[id]: http://example.com")),
     ?_assertEqual("<p>My <a href=\"http://example.com\">id</a> test</p>", erlmarkdown:conv("My [id] test\n[id]: http://example.com")),
     ?_assertEqual("<p>blah <a href=\"https://something.com:1234/a/path\">https://something.com:1234/a/path</a> blah\na</p>", erlmarkdown:conv("blah <https://something.com:1234/a/path> blah\na")),
     ?_assertEqual("<p>blah <a href=\"http://something.com:1234/a/path\">http://something.com:1234/a/path</a> blah\na</p>", erlmarkdown:conv("blah <http://something.com:1234/a/path> blah\na")),
     ?_assertEqual("<p>Some text <img src=\"/a/path\" alt=\"hey\" title=\"\" /> there\na</p>", erlmarkdown:conv("[id]: /a/path\nSome text ![hey] [id] there\na")),
     ?_assertEqual("<p>Some text <img src=\"/a/path\" alt=\"hey\" title=\"\" /> there\na</p>", erlmarkdown:conv("[id]: /a/path\nSome text ![hey][id] there\na")),
     ?_assertEqual("<p>Some text <a href=\"/a/path\">hey</a> there\na</p>", erlmarkdown:conv("[id]:   \t \t   /a/path\nSome text [hey][id] there\na")),
     ?_assertEqual("<p>Some text [id] there\na</p>", erlmarkdown:conv("[id]: /a/path\nSome text \\[id] there\na")),
     ?_assertEqual("<p>Some text <a href=\"/a/path\">hey</a> there\na</p>", erlmarkdown:conv("[id]: /a/path\nSome text [hey] [id] there\na")),
     ?_assertEqual("<p>Some text <a href=\"/a/path\">hey</a> there\na</p>", erlmarkdown:conv("[id]: /a/path\nSome text [hey][id] there\na")),
     ?_assertEqual("<p>an <img src=\"path/jpg.jpg\" alt=\"\" title=\"\" /> image\na</p>", erlmarkdown:conv("an ![](path/jpg.jpg ) image\na")),
     ?_assertEqual("<p>an <img src=\"path/jpg.jpg\" alt=\"Alt\" title=\"\" /> image\na</p>", erlmarkdown:conv("an ![Alt](path/jpg.jpg ) image\na")),
     ?_assertEqual("<p>an <img src=\"path/jpg.jpg\" alt=\"Alt\" title=\"Title\" /> image\na</p>", erlmarkdown:conv("an ![Alt](path/jpg.jpg 'Title') image\na")),
     ?_assertEqual("<p>an <img src=\"path/jpg.jpg\" alt=\"Alt\" title=\"Title\" /> image\na</p>", erlmarkdown:conv("an ![Alt](path/jpg.jpg \"Title\") image\na")),
     ?_assertEqual("<p>an <img src=\"path/jpg.jpg\" alt=\"Alt\" title=\"Title\" /> image\na</p>", erlmarkdown:conv("an ![Alt] (path/jpg.jpg \"Title\") image\na")),
     ?_assertEqual("<p>An <a href=\"http://example.com/\">example</a> of link\na</p>", erlmarkdown:conv("An [example](http://example.com/) of link\na")),
     ?_assertEqual("<p>An <a href=\"http://example.com/\" title=\"Title\"></a> of link\na</p>", erlmarkdown:conv("An [](http://example.com/ \"Title\") of link\na")),
     ?_assertEqual("<p>An <a href=\"http://example.com/\" title=\"Title\">example</a> of link\na</p>", erlmarkdown:conv("An [example](http://example.com/ 'Title') of link\na")),
     ?_assertEqual("<p>An <a href=\"http://example.com/\" title=\"Title\">example</a> of link\na</p>", erlmarkdown:conv("An [example](http://example.com/ \"Title\") of link\na")),
     ?_assertEqual("<p>An [example] (http://example.com/ \"Title\") of link\na</p>", erlmarkdown:conv("An [example] (http://example.com/ \"Title\") of link\na")),
     ?_assertEqual("<p>a\na</p>", erlmarkdown:conv("a\na\n   [id]: /example.com")),
     ?_assertEqual("<p>a\na</p>", erlmarkdown:conv("a\na\n   [id]: http://example.com")),
     ?_assertEqual("<p>a\na</p>", erlmarkdown:conv("a\na\n[id]: <http://example.com>")),
     ?_assertEqual("<p>a\na</p>", erlmarkdown:conv("a\na\n[id]: http://example.com")),
     ?_assertEqual("<p>a\na</p>", erlmarkdown:conv("a\na\n[id]: http://example.com (Title)")),
     ?_assertEqual("<p>a\na</p>", erlmarkdown:conv("a\na\n[id]: http://example.com \"Title\"")),
     ?_assertEqual("<p><em>_</em>blah\na</p>", erlmarkdown:conv("___blah\na")),
     ?_assertEqual("<p>---blah\na</p>", erlmarkdown:conv("---blah\na")),
     ?_assertEqual("<p><em>*</em>blah\na</p>", erlmarkdown:conv("***blah\na")),
     ?_assertEqual("<hr />", erlmarkdown:conv("_ _ _")),
     ?_assertEqual("<hr />", erlmarkdown:conv("- - -")),
     ?_assertEqual("<hr />", erlmarkdown:conv("* * *")),
     ?_assertEqual("<hr />", erlmarkdown:conv("_____")),
     ?_assertEqual("<hr />", erlmarkdown:conv("-----")),
     ?_assertEqual("<hr />", erlmarkdown:conv("*****")),
     ?_assertEqual("<hr />", erlmarkdown:conv("___")),
     ?_assertEqual("<hr />", erlmarkdown:conv("---")),
     ?_assertEqual("<hr />", erlmarkdown:conv("***")),
     ?_assertEqual("<pre><code>&lt;div&gt;&amp;\n</code></pre>", erlmarkdown:conv("\t<div>&")),
     ?_assertEqual("<pre><code>&lt;div&gt;\n</code></pre>", erlmarkdown:conv("\t<div>")),
     ?_assertEqual("<ul>\n<li>a\n    b</li>\n</ul>", erlmarkdown:conv("+ a\n\t\tb")),
     ?_assertEqual("<ul>\n<li>a\n    b</li>\n</ul>", erlmarkdown:conv("+ a\n  \t  b")),
     ?_assertEqual("<ul>\n<li>a\n    b</li>\n</ul>", erlmarkdown:conv("+ a\n\t    b")),
     ?_assertEqual("<pre><code>b\n</code></pre>\n\n<p>c</p>", erlmarkdown:conv("\tb\n\n\n\n\nc")),
     ?_assertEqual("<pre><code>b\n</code></pre>\n\n<p>c</p>", erlmarkdown:conv("\tb\n\n\n\nc")),
     ?_assertEqual("<pre><code>b\n</code></pre>\n\n<p>c</p>", erlmarkdown:conv("\tb\n\n\nc")),
     ?_assertEqual("<pre><code>b\n</code></pre>\n\n<p>c</p>", erlmarkdown:conv("\tb\n\nc")),
     ?_assertEqual("<pre><code>b\n</code></pre>\n\n<p>c</p>", erlmarkdown:conv("\tb\nc")),
     ?_assertEqual("<pre><code>b\n</code></pre>", erlmarkdown:conv("\tb")),
     ?_assertEqual("<pre><code>b\n</code></pre>", erlmarkdown:conv("    b")),
     ?_assertEqual("<ol>\n<li><p>a</p></li>\n<li><p>b</p></li>\n<li><p>c</p></li>\n</ol>", erlmarkdown:conv("4. a\n\n5. b\n\n6. c")),
     ?_assertEqual("<ol>\n<li>a</li>\n<li>b</li>\n<li>c</li>\n</ol>", erlmarkdown:conv("4. a\n5. b\n6. c")),
     ?_assertEqual("<ol>\n<li>blah\nblah</li>\n</ol>", erlmarkdown:conv("4. blah\nblah")),
     ?_assertEqual("<p>555.blah\na</p>", erlmarkdown:conv("555.blah\na")),
     ?_assertEqual("<p>555 @blah\na</p>", erlmarkdown:conv("555 @blah\na")),
     ?_assertEqual("<ol>\n<li>blah</li>\n</ol>", erlmarkdown:conv("555. blah")),
     ?_assertEqual("<ol>\n<li>blah</li>\n</ol>", erlmarkdown:conv("4. blah")),
     ?_assertEqual("<ol>\n<li>blah</li>\n</ol>", erlmarkdown:conv("1. blah")),
     ?_assertEqual("<ul>\n<li>blah\nblah</li>\n</ul>", erlmarkdown:conv("- blah\nblah")),
     ?_assertEqual("<ul>\n<li><p>a</p></li>\n<li><p>b</p></li>\n<li><p>c</p></li>\n<li>d</li>\n</ul>", erlmarkdown:conv("- a\n\n+ b\n\n+ c\n* d")),
     ?_assertEqual("<ul>\n<li><p>a</p></li>\n<li><p>b</p></li>\n</ul>", erlmarkdown:conv("- a\n\n+ b")),
     ?_assertEqual("<ul>\n<li><p>a</p>\n\n<p>XX+ b</p></li>\n</ul>", erlmarkdown:conv("- a\n\n \n\t\n XX+ b")),
     ?_assertEqual("<ul>\n<li><p>a</p>\n\n<p>XX+ b</p></li>\n</ul>", erlmarkdown:conv("- a\n \n \n\t\n XX+ b")),
     ?_assertEqual("<ul>\n<li><p>a</p>\n\n<p>XX+ b</p></li>\n</ul>", erlmarkdown:conv("- a\n\n\n\n XX+ b")),
     ?_assertEqual("<ul>\n<li>a</li>\n</ul>\n\n<p>XX+ b</p>", erlmarkdown:conv("- a\n\n\n\nXX+ b")),
     ?_assertEqual("<ul>\n<li>a</li>\n<li>b</li>\n<li>c</li>\n</ul>", erlmarkdown:conv("- a\n+ b\n- c")),
     ?_assertEqual("<p>-blah\na</p>", erlmarkdown:conv("-blah\na")),
     ?_assertEqual("<ul>\n<li>blah</li>\n</ul>", erlmarkdown:conv("- blah")),
     ?_assertEqual("<p>*blah\na</p>", erlmarkdown:conv("*blah\na")),
     ?_assertEqual("<ul>\n<li>blah</li>\n</ul>", erlmarkdown:conv("* blah")),
     ?_assertEqual("<p>+blah\na</p>", erlmarkdown:conv("+blah\na")),
     ?_assertEqual("<ul>\n<li>blah</li>\n</ul>", erlmarkdown:conv("+ blah")),
     ?_assertEqual("<p>bleh</p>\n\n<blockquote>\n  <p>blah</p>\n</blockquote>", erlmarkdown:conv("bleh\n> blah")),
     ?_assertEqual("<blockquote>\n  <p>blah\n  a</p>\n</blockquote>", erlmarkdown:conv("> blah\na")),
     ?_assertEqual("<h1>blahblah</h1>\n\n<p>bleh</p>", erlmarkdown:conv("# blahblah ###\nbleh")),
     ?_assertEqual("<h6># blahblah</h6>\n\n<p>bleh</p>", erlmarkdown:conv("####### blahblah\nbleh")),
     ?_assertEqual("<h6>blahblah</h6>\n\n<p>bleh</p>", erlmarkdown:conv("###### blahblah\nbleh")),
     ?_assertEqual("<h5>blahblah</h5>\n\n<p>bleh</p>", erlmarkdown:conv("##### blahblah\nbleh")),
     ?_assertEqual("<h4>blahblah</h4>\n\n<p>bleh</p>", erlmarkdown:conv("#### blahblah\nbleh")),
     ?_assertEqual("<h3>blahblah</h3>\n\n<p>bleh</p>", erlmarkdown:conv("### blahblah\nbleh")),
     ?_assertEqual("<h2>blahblah</h2>\n\n<p>bleh</p>", erlmarkdown:conv("## blahblah\nbleh")),
     ?_assertEqual("<h1>blahblah</h1>\n\n<p>bleh</p>", erlmarkdown:conv("# blahblah\nbleh")),
     ?_assertEqual("<h1>blahblah</h1>", erlmarkdown:conv("# blahblah ###")),
     ?_assertEqual("<h6># blahblah</h6>", erlmarkdown:conv("####### blahblah")),
     ?_assertEqual("<h6>blahblah</h6>", erlmarkdown:conv("###### blahblah")),
     ?_assertEqual("<h5>blahblah</h5>", erlmarkdown:conv("##### blahblah")),
     ?_assertEqual("<h4>blahblah</h4>", erlmarkdown:conv("#### blahblah")),
     ?_assertEqual("<h3>blahblah</h3>", erlmarkdown:conv("### blahblah")),
     ?_assertEqual("<h2>blahblah</h2>", erlmarkdown:conv("## blahblah")),
     ?_assertEqual("<h1>blahblah</h1>", erlmarkdown:conv("# blahblah")),
     ?_assertEqual("<h2>> a</h2>", erlmarkdown:conv("> a\n-")),
     ?_assertEqual("<h1>> a</h1>", erlmarkdown:conv("> a\n=")),
     ?_assertEqual("<h2>blahblah</h2>\n\n<p>blah</p>", erlmarkdown:conv("blahblah\n-----\nblah")),
     ?_assertEqual("<h1>blahblah</h1>\n\n<p>blah</p>", erlmarkdown:conv("blahblah\n====\nblah")),
     ?_assertEqual("<h2>blahblah</h2>", erlmarkdown:conv("blahblah\n-----")),
     ?_assertEqual("<h1>blahblah</h1>", erlmarkdown:conv("blahblah\n====")),
     ?_assertEqual("<p>blah\nblah</p>", erlmarkdown:conv("blah\r\nblah\n")),
     ?_assertEqual("<p>blah\nblah</p>", erlmarkdown:conv("blah\r\nblah")),
     ?_assertEqual("<p>blah\nblah</p>", erlmarkdown:conv("blah\nblah")),
     ?_assertEqual("<p><strong><em>you</em></strong> sad bastard\na</p>", erlmarkdown:conv("___you___ sad bastard\na")),
     ?_assertEqual("<p><strong>you</strong> sad bastard\na</p>", erlmarkdown:conv("__you__ sad bastard\na")),
     ?_assertEqual("<p><em>you</em> sad bastard\na</p>", erlmarkdown:conv("_you_ sad bastard\na")),
     ?_assertEqual("<p><strong><em>you</em></strong> sad bastard\na</p>", erlmarkdown:conv("***you*** sad bastard\na")),
     ?_assertEqual("<p><strong>you</strong> sad bastard\na</p>", erlmarkdown:conv("**you** sad bastard\na")),
     ?_assertEqual("<p><em>you</em> sad bastard\na</p>", erlmarkdown:conv("*you* sad bastard\na")),
     ?_assertEqual("<p>you _sad_ bastard\na</p>", erlmarkdown:conv("you \\_sad\\_ bastard\na")),
     ?_assertEqual("<p>you *sad* bastard\na</p>", erlmarkdown:conv("you \\*sad\\* bastard\na")),
     ?_assertEqual("<p>you<em>sad</em>bastard\na</p>", erlmarkdown:conv("you_sad_bastard\na")),
     ?_assertEqual("<p>you<em>sad</em>bastard\na</p>", erlmarkdown:conv("you*sad*bastard\na")),
     ?_assertEqual("<p>you <strong><em>sad</em></strong> bastard\na</p>", erlmarkdown:conv("you ___sad___ bastard\na")),
     ?_assertEqual("<p>you <strong>sad</strong> bastard\na</p>", erlmarkdown:conv("you __sad__ bastard\na")),
     ?_assertEqual("<p>you <em>sad</em> bastard\na</p>", erlmarkdown:conv("you _sad_ bastard\na")),
     ?_assertEqual("<p>you <strong><em>sad</em></strong> bastard\na</p>", erlmarkdown:conv("you ***sad*** bastard\na")),
     ?_assertEqual("<p>you <strong>sad</strong> bastard\na</p>", erlmarkdown:conv("you **sad** bastard\na")),
     ?_assertEqual("<p>you <em>sad</em> bastard\na</p>", erlmarkdown:conv("you *sad* bastard\na")),
     ?_assertEqual("<h6>#</h6>\n\n<p>a</p>", erlmarkdown:conv("########\na")),
     ?_assertEqual("<h6>#</h6>\n\n<p>a</p>", erlmarkdown:conv("#######\na")),
     ?_assertEqual("<h5>#</h5>\n\n<p>a</p>", erlmarkdown:conv("######\na")),
     ?_assertEqual("<h4>#</h4>\n\n<p>a</p>", erlmarkdown:conv("#####\na")),
     ?_assertEqual("<h3>#</h3>\n\n<p>a</p>", erlmarkdown:conv("####\na")),
     ?_assertEqual("<h2>#</h2>\n\n<p>a</p>", erlmarkdown:conv("###\na")),
     ?_assertEqual("<h1>#</h1>\n\n<p>a</p>", erlmarkdown:conv("##\na")),
     ?_assertEqual("<p>#\na</p>", erlmarkdown:conv("#\na")),
     ?_assertEqual("<p>[\na</p>", erlmarkdown:conv("\n[\na")),
     ?_assertEqual("<p>>\na</p>", erlmarkdown:conv("\n>\na")),
     ?_assertEqual("<p>-\na</p>", erlmarkdown:conv("\n-\na")),
     ?_assertEqual("<p>=\na</p>", erlmarkdown:conv("\n=\na")),
     ?_assertEqual("<p>[\na</p>", erlmarkdown:conv("[\na")),
     ?_assertEqual("<p>>\na</p>", erlmarkdown:conv(">\na")),
     ?_assertEqual("<p>-\na</p>", erlmarkdown:conv("-\na")),
     ?_assertEqual("<p>=\na</p>", erlmarkdown:conv("=\na")),
     ?_assertEqual("<p>abc`def\na</p>", erlmarkdown:conv("abc\\`def\na")),
     ?_assertEqual("<p>xyz\nab:c\na</p>", erlmarkdown:conv("xyz\r\nab:c\na")),
     ?_assertEqual("<p>xyz\nab:c\na</p>", erlmarkdown:conv("xyz\nab:c\na")),
     ?_assertEqual("<p>xyz    ab:c\na</p>", erlmarkdown:conv("xyz\tab:c\na")),
     ?_assertEqual("<p>xyz ab:c\na</p>", erlmarkdown:conv("xyz ab:c\na")),
     ?_assertEqual("<p>xyz(ab:c\na</p>", erlmarkdown:conv("xyz(ab:c\na")),
     ?_assertEqual("<p>xyz]ab:c\na</p>", erlmarkdown:conv("xyz]ab:c\na")),
     ?_assertEqual("<p>xyz[ab:c\na</p>", erlmarkdown:conv("xyz[ab:c\na")),
     ?_assertEqual("<p>xyz)ab:c\na</p>", erlmarkdown:conv("xyz)ab:c\na")),
     ?_assertEqual("<p>xyz(ab:c\na</p>", erlmarkdown:conv("xyz(ab:c\na")),
     ?_assertEqual("<p>xyz/ab:c\na</p>", erlmarkdown:conv("xyz/ab:c\na")),
     ?_assertEqual("<p>xyz\\ab:c\na</p>", erlmarkdown:conv("xyz\\ab:c\na")),
     ?_assertEqual("<p>xyz!ab:c\na</p>", erlmarkdown:conv("xyz!ab:c\na")),
     ?_assertEqual("<p>xyz`ab:c\na</p>", erlmarkdown:conv("xyz`ab:c\na")),
     ?_assertEqual("<p>xyz\"ab:c\na</p>", erlmarkdown:conv("xyz\"ab:c\na")),
     ?_assertEqual("<p>xyz'ab:c\na</p>", erlmarkdown:conv("xyz'ab:c\na")),
     ?_assertEqual("<p>xyz:ab:c\na</p>", erlmarkdown:conv("xyz:ab:c\na")),
     ?_assertEqual("<p>xyz.ab:c\na</p>", erlmarkdown:conv("xyz.ab:c\na")),
     ?_assertEqual("<p>xyz0ab:c\na</p>", erlmarkdown:conv("xyz0ab:c\na")),
     ?_assertEqual("<p>xyz9ab:c\na</p>", erlmarkdown:conv("xyz9ab:c\na")),
     ?_assertEqual("<p>xyz8ab:c\na</p>", erlmarkdown:conv("xyz8ab:c\na")),
     ?_assertEqual("<p>xyz7ab:c\na</p>", erlmarkdown:conv("xyz7ab:c\na")),
     ?_assertEqual("<p>xyz6ab:c\na</p>", erlmarkdown:conv("xyz6ab:c\na")),
     ?_assertEqual("<p>xyz5ab:c\na</p>", erlmarkdown:conv("xyz5ab:c\na")),
     ?_assertEqual("<p>xyz4ab:c\na</p>", erlmarkdown:conv("xyz4ab:c\na")),
     ?_assertEqual("<p>xyz3ab:c\na</p>", erlmarkdown:conv("xyz3ab:c\na")),
     ?_assertEqual("<p>xyz2ab:c\na</p>", erlmarkdown:conv("xyz2ab:c\na")),
     ?_assertEqual("<p>xyz1ab:c\na</p>", erlmarkdown:conv("xyz1ab:c\na")),
     ?_assertEqual("<p>xyz_ab:c\na</p>", erlmarkdown:conv("xyz_ab:c\na")),
     ?_assertEqual("<p>xyz*ab:c\na</p>", erlmarkdown:conv("xyz*ab:c\na")),
     ?_assertEqual("<p>xyz+ab:c\na</p>", erlmarkdown:conv("xyz+ab:c\na")),
     ?_assertEqual("<p>xyz>ab:c\na</p>", erlmarkdown:conv("xyz>ab:c\na")),
     ?_assertEqual("<p>xyz#ab:c\na</p>", erlmarkdown:conv("xyz#ab:c\na")),
     ?_assertEqual("<p>xyz-ab:c\na</p>", erlmarkdown:conv("xyz-ab:c\na")),
     ?_assertEqual("<p>xyz=ab:c\na</p>", erlmarkdown:conv("xyz=ab:c\na")),
     ?_assertEqual("<p>xyz/ab:c\na</p>", erlmarkdown:conv("xyz/ab:c\na")),
     ?_assertEqual("<p>ab:c\na</p>", erlmarkdown:conv("\r\n ab:c\na")),
     ?_assertEqual("<p>ab:c\na</p>", erlmarkdown:conv("\n ab:c\na")),
     ?_assertEqual("<pre><code> ab:c\n</code></pre>\n\n<p>a</p>", erlmarkdown:conv("\t ab:c\na")),
     ?_assertEqual("<p>ab:c\na</p>", erlmarkdown:conv("  ab:c\na")),
     ?_assertEqual("<p>( ab:c\na</p>", erlmarkdown:conv("( ab:c\na")),
     ?_assertEqual("<p>] ab:c\na</p>", erlmarkdown:conv("] ab:c\na")),
     ?_assertEqual("<p>[ ab:c\na</p>", erlmarkdown:conv("[ ab:c\na")),
     ?_assertEqual("<p>) ab:c\na</p>", erlmarkdown:conv(") ab:c\na")),
     ?_assertEqual("<p>( ab:c\na</p>", erlmarkdown:conv("( ab:c\na")),
     ?_assertEqual("<p>/ ab:c\na</p>", erlmarkdown:conv("/ ab:c\na")),
     ?_assertEqual("<p>\\ ab:c\na</p>", erlmarkdown:conv("\\ ab:c\na")),
     ?_assertEqual("<p>! ab:c\na</p>", erlmarkdown:conv("! ab:c\na")),
     ?_assertEqual("<p>` ab:c\na</p>", erlmarkdown:conv("` ab:c\na")),
     ?_assertEqual("<p>\" ab:c\na</p>", erlmarkdown:conv("\" ab:c\na")),
     ?_assertEqual("<p>' ab:c\na</p>", erlmarkdown:conv("' ab:c\na")),
     ?_assertEqual("<p>: ab:c\na</p>", erlmarkdown:conv(": ab:c\na")),
     ?_assertEqual("<p>. ab:c\na</p>", erlmarkdown:conv(". ab:c\na")),
     ?_assertEqual("<p>0 ab:c\na</p>", erlmarkdown:conv("0 ab:c\na")),
     ?_assertEqual("<p>9 ab:c\na</p>", erlmarkdown:conv("9 ab:c\na")),
     ?_assertEqual("<p>8 ab:c\na</p>", erlmarkdown:conv("8 ab:c\na")),
     ?_assertEqual("<p>7 ab:c\na</p>", erlmarkdown:conv("7 ab:c\na")),
     ?_assertEqual("<p>6 ab:c\na</p>", erlmarkdown:conv("6 ab:c\na")),
     ?_assertEqual("<p>5 ab:c\na</p>", erlmarkdown:conv("5 ab:c\na")),
     ?_assertEqual("<p>4 ab:c\na</p>", erlmarkdown:conv("4 ab:c\na")),
     ?_assertEqual("<p>3 ab:c\na</p>", erlmarkdown:conv("3 ab:c\na")),
     ?_assertEqual("<p>2 ab:c\na</p>", erlmarkdown:conv("2 ab:c\na")),
     ?_assertEqual("<p>1 ab:c\na</p>", erlmarkdown:conv("1 ab:c\na")),
     ?_assertEqual("<p>_ ab:c\na</p>", erlmarkdown:conv("_ ab:c\na")),
     ?_assertEqual("<ul>\n<li>ab:c\na</li>\n</ul>", erlmarkdown:conv("* ab:c\na")),
     ?_assertEqual("<ul>\n<li>ab:c\na</li>\n</ul>", erlmarkdown:conv("+ ab:c\na")),
     ?_assertEqual("<blockquote>\n  <p>ab:c\n  a</p>\n</blockquote>", erlmarkdown:conv("> ab:c\na")),
     ?_assertEqual("<h1>ab:c</h1>\n\n<p>a</p>", erlmarkdown:conv("# ab:c\na")),
     ?_assertEqual("<ul>\n<li>ab:c\na</li>\n</ul>", erlmarkdown:conv("- ab:c\na")),
     ?_assertEqual("<p>= ab:c\na</p>", erlmarkdown:conv("= ab:c\na")),
     ?_assertEqual("<p>/ ab:c\na</p>", erlmarkdown:conv("/ ab:c\na")),
     ?_assertEqual("<p>&lt; /ab:c\na</p>", erlmarkdown:conv("< /ab:c\na")),
     ?_assertEqual("<p>&lt; ab:c\na</p>", erlmarkdown:conv("< ab:c\na")),
     ?_assertEqual("<p>ab:c\na</p>", erlmarkdown:conv("\r\nab:c\na")),
     ?_assertEqual("<p>ab:c\na</p>", erlmarkdown:conv("\nab:c\na")),
     ?_assertEqual("<pre><code>ab:c\n</code></pre>\n\n<p>a</p>", erlmarkdown:conv("\tab:c\na")),
     ?_assertEqual("<p>ab:c\na</p>", erlmarkdown:conv(" ab:c\na")),
     ?_assertEqual("<p>(ab:c\na</p>", erlmarkdown:conv("(ab:c\na")),
     ?_assertEqual("<p>]ab:c\na</p>", erlmarkdown:conv("]ab:c\na")),
     ?_assertEqual("<p>[ab:c\na</p>", erlmarkdown:conv("[ab:c\na")),
     ?_assertEqual("<p>)ab:c\na</p>", erlmarkdown:conv(")ab:c\na")),
     ?_assertEqual("<p>(ab:c\na</p>", erlmarkdown:conv("(ab:c\na")),
     ?_assertEqual("<p>/ab:c\na</p>", erlmarkdown:conv("/ab:c\na")),
     ?_assertEqual("<p>\\ab:c\na</p>", erlmarkdown:conv("\\ab:c\na")),
     ?_assertEqual("<p>!ab:c\na</p>", erlmarkdown:conv("!ab:c\na")),
     ?_assertEqual("<p>`ab:c\na</p>", erlmarkdown:conv("`ab:c\na")),
     ?_assertEqual("<p>\"ab:c\na</p>", erlmarkdown:conv("\"ab:c\na")),
     ?_assertEqual("<p>'ab:c\na</p>", erlmarkdown:conv("'ab:c\na")),
     ?_assertEqual("<p>:ab:c\na</p>", erlmarkdown:conv(":ab:c\na")),
     ?_assertEqual("<p>.ab:c\na</p>", erlmarkdown:conv(".ab:c\na")),
     ?_assertEqual("<p>0ab:c\na</p>", erlmarkdown:conv("0ab:c\na")),
     ?_assertEqual("<p>9ab:c\na</p>", erlmarkdown:conv("9ab:c\na")),
     ?_assertEqual("<p>8ab:c\na</p>", erlmarkdown:conv("8ab:c\na")),
     ?_assertEqual("<p>7ab:c\na</p>", erlmarkdown:conv("7ab:c\na")),
     ?_assertEqual("<p>6ab:c\na</p>", erlmarkdown:conv("6ab:c\na")),
     ?_assertEqual("<p>5ab:c\na</p>", erlmarkdown:conv("5ab:c\na")),
     ?_assertEqual("<p>4ab:c\na</p>", erlmarkdown:conv("4ab:c\na")),
     ?_assertEqual("<p>3ab:c\na</p>", erlmarkdown:conv("3ab:c\na")),
     ?_assertEqual("<p>2ab:c\na</p>", erlmarkdown:conv("2ab:c\na")),
     ?_assertEqual("<p>1ab:c\na</p>", erlmarkdown:conv("1ab:c\na")),
     ?_assertEqual("<p>_ab:c\na</p>", erlmarkdown:conv("_ab:c\na")),
     ?_assertEqual("<p>*ab:c\na</p>", erlmarkdown:conv("*ab:c\na")),
     ?_assertEqual("<p>+ab:c\na</p>", erlmarkdown:conv("+ab:c\na")),
     ?_assertEqual("<blockquote>\n  <p>ab:c\n  a</p>\n</blockquote>", erlmarkdown:conv(">ab:c\na")),
     ?_assertEqual("<h1>ab:c</h1>\n\n<p>a</p>", erlmarkdown:conv("#ab:c\na")),
     ?_assertEqual("<p>-ab:c\na</p>", erlmarkdown:conv("-ab:c\na")),
     ?_assertEqual("<p>=ab:c\na</p>", erlmarkdown:conv("=ab:c\na")),
     ?_assertEqual("<p>/ab:c\na</p>", erlmarkdown:conv("/ab:c\na")),
     ?_assertEqual("<p>Hey\nHo! <br />\nLets Go</p>", erlmarkdown:conv("    \nHey\nHo!  \nLets Go")),
     ?_assertEqual("<p>Hey Ho <br />\nLets Go</p>", erlmarkdown:conv("Hey Ho\t\nLets Go")),
     ?_assertEqual("<p>Hey Ho <br />\nLets Go</p>", erlmarkdown:conv("Hey Ho  \nLets Go")),
     ?_assertEqual("<p>Hey\nHo!\nHardy</p>", erlmarkdown:conv("Hey\nHo!\nHardy\n\n")),
     ?_assertEqual("<p>Hey Ho!\na</p>", erlmarkdown:conv("Hey Ho!\na")),
     ?_assertEqual("<p>3 &lt;4\na</p>", erlmarkdown:conv(" 3 <4\na")),
     ?_assertEqual("<p>3 &lt; 4\na</p>", erlmarkdown:conv(" 3 < 4\na")),
     ?_assertEqual("<p>3 > 4\na</p>", erlmarkdown:conv("3 > 4\na")),
     ?_assertEqual("<p>a\nb\nc</p>", erlmarkdown:conv("a\nb\nc\n \n\t\n     ")),
     ?_assertEqual("<p>a\nb\nc</p>", erlmarkdown:conv("a\nb\nc\n\n\n")),
     ?_assertEqual("", erlmarkdown:conv("  \n")),
     ?_assertEqual("", erlmarkdown:conv("\t\n")),
     ?_assertEqual("", erlmarkdown:conv("\n\n")),
     ?_assertEqual("", erlmarkdown:convy("\n"))
    ].
