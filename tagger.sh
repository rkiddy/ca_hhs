
if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    echo ""
    echo "usage: bash tagger.sh <params>"
    echo ""
    echo "--list: will list all tags for all datasets."
    echo "--list <tag>: will list datasets for this tag."
    echo "--add <tag> <dataset>: will add this existing tag to this dataset."
    echo "--rm <tag> <dataset>: will remove this tag from this dataset."
    echo "--new <tag>: will create this tag."
    echo ""
    exit
fi

if [ "$1" = "--list" ] && [ "$2" = "" ]; then
    # list all datasets with any tags
    echo ""
    p1="select d1.name, t1.name from datasets d1, tag_joins j1, tags t1"
    p2="where d1.pk = j1.target_pk and j1.target = 'ds' and j1.tag_pk = t1.pk;"
    echo "$p1 $p2" | ssh opencal mysql --skip-column-names ca_hhs_meta | \
        sort | \
        awk 'BEGIN{last=""}{if ($1 != last) print ""; print $0; last=$1}'
    echo ""
fi

if [ "$1" = "--list" ] && [ "$2" != "" ]; then
    # list datasets for this tag.
    echo "TBD"
fi

if [ "$1" = "--add" ] && [ "$2" != "" ] && [ "$3" != "" ]; then
    # add this tag to the given dataset.
    echo ""
    ds_pk=`echo "select pk from datasets where name = '$3';" | ssh opencal mysql --skip-column-names ca_hhs_meta`
    tag_pk=`echo "select pk from tags where name = '$2';" | ssh opencal mysql --skip-column-names ca_hhs_meta`
    if [ "$ds_pk" = "" ] || [ "$tag_pk" = "" ]; then
        echo "\nPlease give an existing dataset name and tag name.\n"
        exit
    fi
    echo "insert into tag_joins (tag_pk, target_pk, target) values ($tag_pk, $ds_pk, 'ds');" | \
        ssh opencal mysql ca_hhs_meta
    echo "Ok"
fi

if [ "$1" = "--rm" ] && [ "$2" != "" ] && [ "$3" != "" ]; then
    # remove this tag from the given dataset.
    echo ""
    ds_pk=`echo "select pk from datasets where name = '$3';" | ssh opencal mysql --skip-column-names ca_hhs_meta`
    tag_pk=`echo "select pk from tags where name = '$2';" | ssh opencal mysql --skip-column-names ca_hhs_meta`
    if [ "$ds_pk" = "" ] || [ "$tag_pk" = "" ]; then
        echo "\nPlease give an existing dataset name and tag name.\n"
        exit
    fi
    echo "delete from tag_joins where tag_pk = $tag_pk and target_pk = $ds_pk and target = 'ds';" | \
        ssh opencal mysql ca_hhs_meta
    echo "Ok"
fi

