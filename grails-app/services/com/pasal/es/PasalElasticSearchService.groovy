package com.pasal.es

/*import org.elasticsearch.action.index.IndexResponse
import org.elasticsearch.action.search.SearchResponse
import org.elasticsearch.client.node.NodeClient
import org.elasticsearch.client.transport.TransportClient
import org.elasticsearch.common.settings.ImmutableSettings
import org.elasticsearch.common.settings.Settings
import org.elasticsearch.common.transport.InetSocketTransportAddress
import org.elasticsearch.node.NodeBuilder*/

class PasalElasticSearchService {

    /*def NodeClient getClient() {
        def nodeBuilder = new NodeBuilder()
        def gNode = nodeBuilder.data(true).node()
        def client = gNode.client()

        return client
    }*/

   /* def TransportClient getTransportClient() {

        final Settings settings = ImmutableSettings.settingsBuilder()
                .put("cluster.name", "elasticsearch")
                .put("client.transport.sniff", false)
                .put("client", true)
                .put("data", true)
                .build();

        TransportClient client = new TransportClient(settings);
        client.addTransportAddress(new InetSocketTransportAddress("127.0.0.1",9300));

        return client

    }*/

    def HashMap populateParams(def params){

        Map <String, Object> json = new HashMap<String, Object>()

        json.put('billDate', params.billDate)
        json.put('quantity', params.quantity)
        json.put('cash',params.cash)
        json.put('total',params.total)
        json.put('rate',params.rate)

        return json
    }

    def HashMap populateProductParams( def params) {
        Map <String, Object> json = new HashMap<String, Object>()
        params.each {
            println 'key ---' + it.key
            println 'value===>' + it.value
        }
    }

    def HashMap filterParams( def params ) {
        Map <String, Object> result = new HashMap<String, Object>()
        params.each {
            result.put(it.key, it.value)
        }
        result.remove('create')
        result.remove('action')
        result.remove('controller')
        return result
    }

    /**
     * Writes the index with given parameters
     * @param index the index to be written
     * @param type the type to be indexed
     * @param client name of the client (transport / nodebuilder )
     * @param json  Data to be written
     * @return  put index response from the es-server
     */
    /*def IndexResponse writeBillIndex(def index, def type,def client, def json) {
        IndexResponse response = client.prepareIndex(index, type)
                .setSource(json)
                .execute()
                .actionGet()

        return response
    }*/

    /*def SearchResponse searchAllResults (def index, def type, def client) {

        SearchResponse response = client.prepareSearch(index)
                .setTypes(type)
                .execute().actionGet()
        return response
    }*/
}
