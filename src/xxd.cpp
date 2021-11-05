#include "xxd.h"

using namespace std;

// Container for embedded content that shall be
// loaded and persist in memory during the server lifetime.
unique_ptr<map<string, pair<const char*, size_t> > > xxd;

// Container for embedded content MIME.
unique_ptr<map<string, string> > xxd_mime;

