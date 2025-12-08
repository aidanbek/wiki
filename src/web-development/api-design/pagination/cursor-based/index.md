Uses opaque cursor (encoded state) для fetching next page. Cursor points to position в dataset. Consistent results даже
при concurrent modifications (new items don't shift pages). Efficient для large datasets (indexed fields). Used в
Facebook/Twitter APIs. Cursors opaque (base64-encoded), client doesn't interpret. Drawback: can't jump to arbitrary
page. Best для infinite scroll, real-time feeds.
