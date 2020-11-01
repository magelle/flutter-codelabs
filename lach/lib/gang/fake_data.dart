
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
    'KOSHER NOSTRA'][gangId % 10];
}

gangImage(int gangId) {
  return 'https://placekitten.com/g/50/${50 + gangId}';
}