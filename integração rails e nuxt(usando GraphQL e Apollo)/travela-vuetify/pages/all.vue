<template>
  <v-data-table
      v-bind:headers="headers"
      :items="allTravels"
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
import allTravels from '~/apollo/queries/allTravels'
export default {
  apollo: {
    allTravels: {
      prefetch: true,
      query: allTravels
    }
  },
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
  }
}
</script>
