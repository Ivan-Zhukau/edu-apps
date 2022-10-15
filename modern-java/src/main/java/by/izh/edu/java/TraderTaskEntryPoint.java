package by.izh.edu.java;

import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class TraderTaskEntryPoint {

    public static final Logger LOG = LoggerFactory.getLogger(TraderTaskEntryPoint.class);

    public static void main(String[] args) {

        LOG.info("Hello world");
    }

    public static List<Transaction> findTransactionsFor2011OrderBySum(List<Transaction> transactions) {

        return transactions
                .stream()
                .filter(transaction -> transaction.date.getYear() == 2011)
                .sorted(Comparator.comparingInt(Transaction::getSum))
                .toList();
    }

    public static List<String> findUniqueListOfTownsofTraders(List<Trader> traders) {

        return traders
                .stream()
                .map(trader -> trader.city)
                .distinct()
                .toList();
    }

    public static List<Trader> findCambridgeTradersSortedByName(List<Trader> traders) {

        return traders
                .stream()
                .filter(trader -> "Cambridge".equals(trader.city))
                .sorted(Comparator.comparing(trader -> trader.name))
                .toList();
    }

    public static String findTradersNamesOrderByNatureOrder(List<Trader> traders) {

        return traders
                .stream()
                .map(trader -> trader.name)
                .sorted()
                .collect(Collectors.joining(", "));
    }

    public static boolean isAtListOneMilanTrader(List<Trader> traders) {

        return traders
                .stream()
                .anyMatch(trader -> "Milan".equals(trader.city));
    }

    public static int sumOfAllCambridgeTraderTransactions(List<Trader> traders){
        return 0;
    }
}
