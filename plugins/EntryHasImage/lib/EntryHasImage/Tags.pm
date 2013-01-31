package EntryHasImage::Tags;

use strict;
use warnings;

sub cond_image {
    my ($ctx, $args, $cond) = @_;
    my $entry = $ctx->stash('entry');
    my $image = '';
    if($entry) {
        $image = $entry->text
    }
      else { return 0;
   }

   if ( $image =~ m/(?:<img[\S\s]+)src=".+\.(jpe?g|gif|png)"(?:[\S\s]+\/?>)/i ) {
         return 1;
   }
    else {
         return 0;
   }

}

1;
