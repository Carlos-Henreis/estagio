<template>
  <v-data-table
      v-bind:headers="headers"
      :items="travels"
      class="elevation-1"
    >
    <template slot="items" scope="props">
      <td>{{ props.item.name }}</td>
      <td class="text-xs-right">{{ props.item.phone }}</td>
      <td class="text-xs-right">{{ props.item.dateFrom }}</td>
      <td class="text-xs-right">{{ props.item.dateTo }}</td>
      <td class="text-xs-right">{{ props.item.origin }}</td>
      <td class="text-xs-right">{{ props.item.destination }}</td>
      <td class="text-xs-right">{{ props.item.numberp }}</td>
    </template>
  </v-data-table>
</template>
<script>

import {mapState} from 'vuex'
import axios from 'axios'
export default {
  data () {
    return {
      headers: [
        { text: 'Name', value: 'name' },
        { text: 'Phone', value: 'phone' },
        { text: 'Date From', value: 'dateFrom' },
        { text: 'Date To', value: 'dateTo' },
        { text: 'Origin', value: 'origin' },
        { text: 'Destination', value: 'destination' },
        { text: 'Number People', value: 'numberp' }
      ]
    }
  },
  fetch ({ store, params }) {
    return axios.get('http://localhost:9998/api/v1/travels')
      .then((res) => {
        store.commit('allTravels', res.data)
      })
  },
  computed: {
    ...mapState({
      travels: state => state.travels
    })
  }
}
</script>
