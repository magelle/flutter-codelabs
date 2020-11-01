gangName(int gangId) {
  return [
    'AXTER STREET DUDES',
    'BOODLE GANG',
    'CORCORAN\'S ROOSTERS',
    'HUMPTY JACKSON GANG',
    'MOLASSES GANG',
    'CRAZY BUTCH GANG',
    'TUB OF BLOOD BUNCH',
    'WHYOS',
    'YAKEY YAKES',
    'KOSHER NOSTRA'
  ][gangId % 10];
}

gangImage(int gangId) {
  return 'https://placekitten.com/g/500/${300 + gangId}';
}

gangDescription(int gangId) {
  return [
    'Teenage former newsies who went around stealing when not performing at the theater they ran.',
    'Specialized in hijacking wagons and raiding food stores.',
    'Also known as the Charlton Street Gang, they specialized in robbing cargo ships.',
    'With a leader whose most noticeable feature was his humpback, this gang worked the Lower East Side.',
    'Their thing was to get a shopkeeper to fill a hat with molasses and then slap it over his head and run off with the cash drawer.',
    'A ragtag, clever bunch of teen pickpockets.',
    'Worked the East River waterfront from their headquarters, a lovely-sounding bar called Tub of Blood.',
    'New York\'s most powerful 1870s gang used a special call that sounded like "why-oh!"',
    'The leader Yakey Yake Brady got his nickname when a German bartender mispronounced his name, Jake, as "Yake."',
    'More formally known as the Yiddish Black Hand Gang.',
  ][gangId % 10];
}
